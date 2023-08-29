// ========================================================
// ドラッグアンドドロップ受付状態
let drop_avilable = true;

// ========================================================
// ドラッグされたアイテムがファイルかどうか検査する関数
// in:  e - dropイベントオブジェクト
// ========================================================
function isValidDropItem(e)
{
    return (e.dataTransfer.types.indexOf("Files") >= 0)
    && (e.dataTransfer.items.length <= 1);
}

// ========================================================
// 空白桁埋め数値文字列
// in:  n - 数値
//      d - 桁数
// ========================================================
function formatNum( n, d )
{
    if (n < 0)
    {
        return '-' + ('   ' + (-n)).slice(-d);
    }
    return ('   ' + n).slice(-d);
}

// ========================================================
// ゼロ桁埋め数値文字列
// in:  n - 数値
//      d - 桁数
// ========================================================
function formatNum0( n, d )
{
    if (n < 0)
    {
        return '-' + ('000' + (-n)).slice(-d);
    }
    return ('000' + n).slice(-d);
}

// ========================================================
// 空白桁埋め16進数文字列
// in:  n - 数値
//      d - 桁数
// ========================================================
function formatHex( n, d )
{
    if (n < 0)
    {
        return '-' + ('   ' + (-n).toString(16).toUpperCase()).slice(-d);
    }
    return ('   ' + n.toString(16).toUpperCase()).slice(-d);
}

// ========================================================
// ゼロ桁埋め16進数文字列
// in:  n - 数値
//      d - 桁数
// ========================================================
function formatHex0( n, d )
{
    if (n < 0)
    {
        return '-' + ('000' + (-n).toString(16).toUpperCase()).slice(-d);
    }
    return ('000' + n.toString(16).toUpperCase()).slice(-d);
}

// ========================================================
// ラジオスイッチ：チェックされた値を返す
//  in: name - タグのid
// ========================================================
function getCheckedRadioSwtchValue( name )
{
    let radio_sw = document.getElementsByName( name );
    for (let i = 0; i < radio_sw.length; ++i)
    {
        if (radio_sw[i].checked) {
            return radio_sw[i].value;
        }
    }
    return '';
}

// ========================================================
// テスト用：プロパティ一覧表示
// ========================================================
function objToString(obj)
{
    let s = '';
    let pr = Object.entries(obj);
    pr.forEach(function(e) {
        s = s + '[ ' + e + ' ]\n';
    });
    return s;
};

// ========================================================
// MSX ANK 文字 -> Unicode/S-JIS系変換
// in:  d - Uint8Array
// ========================================================
function fromMSXChar(d)
{
    const char_table = Array.from(
        '　月火水木金土日年円時分秒百千万'
        + 'π┴┬┤├┼│─┌┐└┘×大中小'
        + ' !"#$%&\'()*+,-./0123456789:;<=>?'
        + '@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_'
        + '`abcdefghijklmnopqrstuvwxyz{|}~ '
        + '♠❤♣♦〇●をぁぃぅぇぉゃゅょっ'
        + '　あいうえおかきくけこさしすせそ'
        ///*
        + ' ｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿ'
        + 'ﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝﾞﾟ'
        //*/
        /*
        + '　。「」、・ヲァィゥェォャュョッ'
        + 'ーアイウエオカキクケコサシスセソ'
        + 'タチツテトナニヌネノハヒフヘホマ'
        + 'ミムメモヤユヨラリルレロワン゛゜'
        */
        + 'たちつてとなにぬねのはひふへほま'
        + 'みむめもやゆよらりるれろわん　■'
    );
    let graph = false;
    let res = '';
    for (i = 0; i < d.length; ++i) {
        let c = d[i];
        if (graph) {
            if ((64 <= c) && (c <= 95)) {
                res = res + char_table[c - 64];
            } else {
                res = res + ' ';
            }
            graph = false;
        } else
        if (c == 1) {
            graph = true;
        } else 
        if ((32 <= c) && (c <= 255))
        {
            res = res + char_table[c];
        } else {
            res = res + ' ';
        }
    }
    return res;
}

// ========================================================
// vcdバイナリ読み込み
// in:  d - Uint8Array
//      config - loadVcdConfig（設定オブジェクト）
// ========================================================
function loadVcdConfig() 
{
    this.dt_swap = true; // MuSICAバグ対策：dtの値をC/M入れ替え
}
function loadVCD(d, config)
{
    // voice count
    const opll_count    = 100;
    const psg_count     = 30;
    const scc_count     = 50;

    // data size
    const name_length    = 8;
    const opll_data_size = 8;
    const psg_data_size  = 8;
    const scc_wave_size  = 32;
    const scc_data_size  = 4 + scc_wave_size;

    // name table
    const opll_name_s    = 0;
    const psg_name_s     = opll_name_s + opll_count * name_length;
    const scc_name_s     = psg_name_s  + psg_count  * name_length;

    // data body table
    const opll_data_s    = scc_name_s  + scc_count  * name_length;
    const psg_data_s     = opll_data_s + opll_count * opll_data_size;
    const scc_data_s     = psg_data_s  + psg_count  * psg_data_size;

    // array
    let opll_name        = new Array( opll_count, '' );
    let psg_name         = new Array( psg_count , '' );
    let scc_name         = new Array( scc_count , '' );
    let opll_data        = new Array( opll_count, new Uint8Array( opll_data_size, 0 ) );
    let psg_data         = new Array( psg_count , new Uint8Array( psg_data_size , 0 ) );
    let scc_data         = new Array( scc_count , new Uint8Array( scc_data_size , 0 ) );

    // MSX-MUSIC BASICの固定音色
    // MuSICAではユーザー音色定義無効
    const fm_fix_inst = [];
    fm_fix_inst[ 0 ]  = 'PIANO1  ';
    fm_fix_inst[ 2 ]  = 'VIOLIN  ';
    fm_fix_inst[ 3 ]  = 'FLUTE1  ';
    fm_fix_inst[ 4 ]  = 'CLARINET';
    fm_fix_inst[ 5 ]  = 'OBOE    ';
    fm_fix_inst[ 6 ]  = 'TRUMPET ';
    fm_fix_inst[ 9 ]  = 'ORGAN   ';
    fm_fix_inst[ 10 ] = 'GUITAR  ';
    fm_fix_inst[ 12 ] = 'E BASS  ';
    fm_fix_inst[ 14 ] = 'HARPSIC1';
    fm_fix_inst[ 16 ] = 'VIBRAPHO';
    fm_fix_inst[ 23 ] = 'S BASS  ';
    fm_fix_inst[ 24 ] = 'SYNTHE  ';
    fm_fix_inst[ 33 ] = 'WOODBASS';
    fm_fix_inst[ 48 ] = 'HORN    ';

    // ========================================================
    // 構造体：OPLLデータ
    // in:  d - Uint8Array
    //      config - loadVcdConfig（設定オブジェクト）
    // ========================================================
    function OpllD( d, config )
    {   /*
        +0: M: AM(1) | VIB(1) | EG(1) | KSR(1) | MUL(4)
        +1: C: AM(1) | VIB(1) | EG(1) | KSR(1) | MUL(4)
        +2: M: KSL(2) | TL(6)
        +3: C: KSL(2) | 0(1) | DC(1) | DM(1) | FB(3)
        +4: M: AR(4) | DR(4)
        +5: C: AR(4) | DR(4)
        +6: M: SL(4) | RR(4)
        +7: C: SL(4) | RR(4)

        @v15 = { ; Violin
        ;       TL FB
                    4, 7,
        ; AR DR SL RR KL MT AM VB EG KR DT
        9, 3, 1, 1, 1, 1, 0, 1, 1, 0, 1,
        9, 1, 0, 6, 0, 1, 0, 1, 1, 0, 0 }
        */

        this.raw = d;

        this.tl = d[2] & 63;
        this.fb = d[3] & 7;
        this.ar = new Array(2);
        this.dr = new Array(2);
        this.sl = new Array(2);
        this.rr = new Array(2);
        this.kl = new Array(2);
        this.mt = new Array(2);
        this.am = new Array(2);
        this.vb = new Array(2);
        this.eg = new Array(2);
        this.kr = new Array(2);
        this.dt = new Array(2);
        for (let i = 0; i < 2; ++i) {
            this.ar[i] = (d[4 + i] >> 4) & 15;
            this.dr[i] = (d[4 + i] >> 0) & 15;
            this.sl[i] = (d[6 + i] >> 4) & 15;
            this.rr[i] = (d[6 + i] >> 0) & 15;
            this.kl[i] = (d[2 + i] >> 6) & 3;
            this.mt[i] = (d[0 + i] >> 0) & 15;
            this.am[i] = (d[0 + i] >> 7) & 1;
            this.vb[i] = (d[0 + i] >> 6) & 1;
            this.eg[i] = (d[0 + i] >> 5) & 1;
            this.kr[i] = (d[0 + i] >> 4) & 1;
            if (config.dt_swap) {
                this.dt[i] = (d[3] >> (4 - i)) & 1; // MuSICAバグ合わせ
            } else {
                this.dt[i] = (d[3] >> (3 + i)) & 1; // 本来
            }
        }
    }

    // ========================================================
    // 構造体：PSG/SCCデータ
    // in:  d - Uint8Array
    //      config - loadVcdConfig（設定オブジェクト）
    // ========================================================
    function PsgSccD( d, config )
    {   /*
            +0: Attack_Rate
            +1: Decay_Rate
            +2: Sustain_Level
            +3: Release_Rate
            +4: Noise Freqency
            +5: $01=Tone off | $08=Noise off
            +6: blank
            +7: blank

            *at/dt/rt: frame|value
        ... $1F -> add(or sub) 15 per 1 frame
        ... $11 -> add(or sub) 1 per 1 frame
        ... $F1 -> add(or sub) 1 per 15 frame

            @r<number> = { Mode,Noise,AL,AR,DR,SL,SR,RR }
                Mode:
                　0 ... 無指定(変化なし)
                　1 ... トーンのみ
                　2 ... ノイズのみ
                　3 ... トーンとノイズ
        */
        let mode_table = [ 9, 8, 1, 0 ];

        this.raw    = d;

        if (d.length == psg_data_size) {
            this.mode   = mode_table.indexOf( d[5] );
            this.noize  = d[4];
        } else {
            this.mode   = 1;
            this.noize  = 0;
        }

        if (d.length == scc_data_size) {
            this.wave = d.slice(4, 4+32);
        } else {
            this.wave = null;
        }

        function dt_255(n) {
            let t = Math.max(1, (n >> 4) & 15);
            let v = n & 15;
            let d = v * 255 / 15 / t;
            d = Math.floor(d);
            d = Math.min(255, Math.max(1, d));
            return d;
        }
        this.al     = 0;    // MuSICAは0スタート
        this.ar     = dt_255( d[0] );
        this.dr     = dt_255( d[1] );
        this.sl     = Math.min(255, Math.max(0, d[2] * 255 / 15));
        this.sr     = 0;    // MuSICAはSRが無いので常に持続音
        this.rr     = dt_255( d[3] );
    }

    // ========================================================
    // MGSDRV形式テキスト作成：OPLL
    // in:  d - Uint8Array
    //      voice_no - 音色番号
    //      voice_name - 楽器名
    // ========================================================
    /*
        @v15 = { ; Violin
        ;       TL FB
                    4, 7,
        ; AR DR SL RR KL MT AM VB EG KR DT
        9, 3, 1, 1, 1, 1, 0, 1, 1, 0, 1,
        9, 1, 0, 6, 0, 1, 0, 1, 1, 0, 0 }
    */
    function opllToMGSDRV(d, voice_no, voice_name)
    {
        if (fm_fix_inst[voice_no] != undefined)
        {
            voice_name = '(*fixed:' + fm_fix_inst[voice_no] + ') '
                       // + voice_name
                        ;
        }
        let s = '@v' + formatNum0(voice_no, 2) + ' = {    ; ' + voice_name + '\n';
        s = s + ';       TL FB \n';
        s = s + '        ';
        s = s + formatNum(d.tl, 2) + ',';	// tl
        s = s + formatNum(d.fb, 2) + ',';	// fb
        s = s + '\n';
        s = s + '; AR DR SL RR KL MT AM VB EG KR DT \n';
        for (let j = 0; j < 2; ++j)
        {
            s = s + '  ';
            s = s + formatNum(d.ar[j], 2) + ',';	// ar
            s = s + formatNum(d.dr[j], 2) + ',';	// dr
            s = s + formatNum(d.sl[j], 2) + ',';	// sl
            s = s + formatNum(d.rr[j], 2) + ', ';	// rr
            s = s + formatNum(d.kl[j], 1) + ', ';	// kl
            s = s + formatNum(d.mt[j], 1) + ', ';	// mt
            s = s + formatNum(d.am[j], 1) + ', ';	// am
            s = s + formatNum(d.vb[j], 1) + ', ';	// vb
            s = s + formatNum(d.eg[j], 1) + ', ';	// eg
            s = s + formatNum(d.kr[j], 1) + ', ';	// kr
            s = s + formatNum(d.dt[j], 1);	        // dt
            if (j)	s = s + ' } ';
            else	s = s + ',';
            s = s + '\n';
        }
        return s;
    }

    // ========================================================
    // MGSDRV形式テキスト作成：PSG
    // @in  d - Uint8Array
    //      voice_no - 音色番号
    //      voice_name - 楽器名
    // ========================================================
    /*
        @r<number> = { Mode,Noise,AL,AR,DR,SL,SR,RR }
            Mode:
            　0 ... 無指定(変化なし)
            　1 ... トーンのみ
            　2 ... ノイズのみ
            　3 ... トーンとノイズ
    */
    function psgToMGSDRV(d, voice_no, voice_name)
    {
        let s = '@r' + formatNum0(voice_no, 2) + ' = { '
        s = s + formatNum(d.mode,  1) + ', ';    // mode
        s = s + formatNum(d.noize, 2) + ', ';    // noize
        s = s + formatNum(d.al,    3) + ',';     // al
        s = s + formatNum(d.ar,    3) + ',';     // ar
        s = s + formatNum(d.dr,    3) + ',';     // dr
        s = s + formatNum(d.sl,    3) + ',';     // sl
        s = s + formatNum(d.sr,    3) + ',';     // sr
        s = s + formatNum(d.rr,    3) + ' }';    // rr
        s = s + ' ; ' + voice_name + '\n';
        return s;
    }

    // ========================================================
    // MGSDRV形式テキスト作成：SCC波形
    // in:  d - Uint8Array
    //      voice_no - 音色番号
    //      voice_name - 楽器名
    // ========================================================
    /*
        +00: Attack_Rate
        +01: Decay_Rate
        +02: Sustain_Level
        +03: Release_Rate
        +04: Wave Table (32bytes)
        ...
        +35: (Wave Table end)

        @s00 = { 2B343E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F403E2DC0CD273A }
    */
    function sccToMGSDRV(d, voice_no, voice_name)
    {
        if (!d) return '';

        let s = '@s' + formatNum0(voice_no, 2) + ' = { '
        for (let i = 0; i < scc_wave_size; ++i) {
            s = s + formatHex0(d[i], 2);
        }
        s = s + ' } ; ' + voice_name + '\n';
        return s;
    }

    // ========================================================
    // バイナリ解析開始
    // ========================================================
    let res = '';

    // ========================================================
    // データ読み込み：OPLL
    // ========================================================
    {
        res = res + ';--------------------\n';
        res = res + ';-    OPLL VOICE    -\n';
        res = res + ';--------------------\n';

        let np = opll_name_s;
        let dp = opll_data_s;
        for (let i = 0; i < opll_count; ++i)
        {
            opll_name[i] = fromMSXChar( d.slice(np, np + name_length) );
            let dat = new OpllD( d.slice( dp, dp + opll_data_size ), config );
            res = res + opllToMGSDRV( dat, i, opll_name[i] ) + '\n';
            np += name_length;
            dp += opll_data_size;
        }
    }

    // ========================================================
    // データ読み込み：PSG
    // ========================================================
    {
        res = res + ';--------------------\n';
        res = res + ';-    PSG VOICE     -\n';
        res = res + ';--------------------\n';

        let np = psg_name_s;
        let dp = psg_data_s;
        for (let i = 0; i < psg_count; ++i)
        {
            psg_name[i] = fromMSXChar( d.slice(np, np + name_length) );
            let dat = new PsgSccD( d.slice( dp, dp + psg_data_size ), config );
            res = res + psgToMGSDRV( dat, i, psg_name[i] ) + '\n';
            np += name_length;
            dp += psg_data_size;
        }
    }

    // ========================================================
    // データ読み込み：SCC
    // ========================================================
    {
        res = res + ';--------------------\n';
        res = res + ';-    SCC VOICE     -\n';
        res = res + ';--------------------\n';

        let np = scc_name_s;
        let dp = scc_data_s;
        for (let i = 0; i < scc_count; ++i)
        {
            scc_name[i] = fromMSXChar( d.slice(np, np + name_length) );
            let dat = new PsgSccD( d.slice( dp, dp + scc_data_size ), config );
            res = res + psgToMGSDRV( dat, i, scc_name[i] );
            res = res + sccToMGSDRV( dat.wave, i, scc_name[i] ) + '\n';
            np += name_length;
            dp += scc_data_size;
        }
    }

    return res;
}  

// ========================================================
// vcdファイルを開く
// ========================================================
function openVcdFile( target_file )
{
    if (target_file == undefined) {
        text_area.value = 'ここにvcdファイルをドロップ';
        return false;
    }

    // ファイル名表示
    let file_text = `${target_file.name} (${target_file.size}Bytes)`;
    filename_area.textContent = file_text;

    // vcd?
    let file_type = target_file.name.split('.').pop();
    if (file_type.toLowerCase() != 'vcd')
    {
        // vcdファイルでなければ無視
        text_area.value = 'vcdファイルではありません。';
        return false;
    }

    // 変換設定
    let config = new loadVcdConfig();
    // OPLLのDT入れ替え
    config.dt_swap =  (getCheckedRadioSwtchValue('opll_dt_swap') == 'true');

    // ドロップ可能フラグを一時停止
    drop_avilable = false;

    // ========================================================
    // ファイル読み込み
    let reader = new FileReader();
    reader.onload = function(f) {
        let u8array = null;
        try {
            u8array = new Uint8Array(f.target.result);
        } catch (e) {
            text_area.value = '読み込みデータに問題があります';
        }
        if (u8array != null)
        {
            text_area.value = loadVCD(u8array, config);
        }
        drop_avilable = true;
    };
    reader.onerror = function(e) {
        let errmes = new Array(
            "",
            "ファイルが見つかりません",
            "セキュリティエラーが検出されました",
            "ファイルの読込が中断されました",
            "ファイルの読み込み権限がありません",
            "ファイルサイズが大き過ぎます"
            );
        text_area.value = '読み込みエラーです \n\n'
                                + errmes[reader.error.code];
        drop_avilable = true;
    };

    drop_avilable = false;
    reader.readAsArrayBuffer(target_file);

    return true;
}

// ========================================================
// イベント：HTMLの読み込みが完了した
// ========================================================
window.addEventListener('DOMContentLoaded',
function() {
    // 各種画面要素
    const text_area = document.getElementById('text_area');
    const filename_area = document.getElementById('filename_area');

    //const drop_area = document.getElementById('drop_area');
    //const drop_area = text_area;
    const drop_area = document.body;

    // ========================================================
    // イベント：ドラッグ中のアイテムがドラッグ領域
    // ========================================================
    drop_area.addEventListener('dragover', 
    function(e) {
        e.preventDefault(); // ブラウザで開かないようにする
        e.stopPropagation();  // イベントを伝播させない

        if (!drop_avilable || !isValidDropItem(e))
        {
            // ファイルアイテムでなければ無視
            e.dataTransfer.dropEffect = 'none'; // ドラッグしているファイルアイコンを変更
            text_area.classList.remove('dropEffect');   // ドラッグ受付中スタイルシート解除
            return;
        }

        e.dataTransfer.dropEffect = 'copy'; // ドラッグしているファイルアイコンを変更
        text_area.classList.add('dropEffect');   // ドラッグ受付中スタイルシート設定
    });

    // ========================================================
    // イベント：ドラッグ領域の外に出た
    // ========================================================
    drop_area.addEventListener('dragleave', 
    function(e) {
        //e.preventDefault(); // ブラウザで開かないようにする
        e.stopPropagation();  // イベントを伝播させない

        text_area.classList.remove('dropEffect');   // ドラッグ受付中スタイルシート解除
    });

    // ========================================================
    // イベント：ドロップされた
    // ========================================================
    drop_area.addEventListener("drop", 
    function(e) {
        e.preventDefault(); // ブラウザで開かないようにする
        e.stopPropagation();  // イベントを伝播させない

        text_area.classList.remove('dropEffect');   // ドラッグ受付中スタイルシート解除

        if (!drop_avilable || !isValidDropItem(e))
        {
            // ファイルアイテムでなければ無視
            e.dataTransfer.dropEffect = "none"; // ドラッグしているファイルアイコンを変更
            return false;
        }

        // ファイルオープン
        if (!openVcdFile(e.dataTransfer.files[0]))
        {
            e.dataTransfer.dropEffect = "none"; // ドラッグしているファイルアイコンを変更
        }
    });

    // ========================================================
    // イベント：ファイルを開くボタン
    // ========================================================
    const file_open_button = document.getElementById("vcd_file_open");
    file_open_button.addEventListener("change",
    function() {
        if (file_open_button.files.length <= 0)
        {
            return;
        }

        // ファイルオープン
        if (!openVcdFile(file_open_button.files[0]))
        {
            // error
        }
    });
});

