package com.wsw.cospa.utils;

import java.math.BigInteger;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import org.bouncycastle.util.encoders.Cdo;

/* renamed from: com.wsw.cospa.utils.interface, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cinterface {

    /* renamed from: break, reason: not valid java name */
    public static String f22667break = "146372144379205490318397651279575810877674630401376756713544888234448441631421195469371449557009813069179225328595244812888859210444267899624134179269439598626750554744149486431693991900726482490381030602289706414213778315170872098929393476937274144247556843764280070143422500796941791167495767154628182240551";

    /* renamed from: case, reason: not valid java name */
    public static String f22668case = "129687005002893678462258796476531399533182790367431241886401469844966355386036128571070619438228618154986229861190436546865018454538596851401582310946251118113102749171640191782313442529234243995625586165944107120885398307387122000295641915645959373878533198490065094178492877982169810374840993728562031519451";

    /* renamed from: catch, reason: not valid java name */
    public static String f22669catch = "70387587411429431162998934630841684357162439757916736747268320569338844656225562442818193059095514957683718751901115978769227191460645513078175698105894729760343620214532047321719776584517760097231040938346123064264290930257656668906635959708481115861769263421653051042270366207333290378393268508256115557261";

    /* renamed from: class, reason: not valid java name */
    public static String f22670class = "147016280108323395424425110933109423982167754606681218202836670921323970403694758493534062597366854555224174098104812131753688557538322792080358547319739657444425204231632640918083014064617176044848677821564756438387138009504153779014931647274809221226629782150732202102138976504029597451845107605372273052759";

    /* renamed from: const, reason: not valid java name */
    public static String f22671const = "3106162053852405941646509660274026108518469732803117732042375711466702132927191392048972316042652312548134230554380932884247688420353860558675808604636558666900217700811222405994977417661504605591182755170180239765097621852782385920349085783253187007506297779008899163668213273497487603412074635153582808353";

    /* renamed from: do, reason: not valid java name */
    public static String f22672do = "124894949392799470526501691427201380722059386407429374904963151579445000167700084219094797780867267785897015633452737623494882167165602560066550153229779581419202243260024600553243026875623862252970534410045512718055164222767734268476307217370858508842021185622033555296345081105287930968885783895899183401631";

    /* renamed from: else, reason: not valid java name */
    public static String f22673else = "41468496831417976499612361550913102653728100995466516700053850528268229297492608913062177105261438913222934113113306808003163506619327030806591069291997466282358213608270495908597272131676474848064702792913802149316731747013886568532033632097590127095715137913435615888935607179182373719289689782848795732129";

    /* renamed from: for, reason: not valid java name */
    public static String f22674for = "19086069456853159241873580673390497400881106826700537018310625401326552189545004503333042132561491952439938676955532641951444640195991636879317701597903178032251524558220594586042774566667098468523075912221587922761078702629673680760823904240579535052710120226686686757549111111483582028698505555454486750265";

    /* renamed from: goto, reason: not valid java name */
    public static String f22675goto = "114737282646053411153191125552464961684877527566486697407657067497223857621606510099134620159886510385369743052921265046412650960670405167324511418769565986785130279303309025131430922680512927459659347040053031505170887511387363963040194542702287631882079335182228304208113000751602157929985817627734352710973";

    /* renamed from: if, reason: not valid java name */
    public static String f22676if = "65537";

    /* renamed from: new, reason: not valid java name */
    public static String f22677new = "134637879530725842045797524508160121551609494553379149906687560348617712247282090903147805955484430250432335457792034049708343226865029205108006451147296816481047287446612470453679013649723292054233709641226286065157635394380094379354568922533499017531342766295713079603926199948346272171926131302561430658419";

    /* renamed from: this, reason: not valid java name */
    public static String f22678this = "6257529830441680345671809519903228547266025343004944965581553527045064209591941479192393855478193383049388957488194937091115212722220969365543661420832829565415921870538601853029528477108725351697612171310930129800532652860831639423337379483853627148984644975559139383848088176284172307975953124337029486825";

    /* renamed from: try, reason: not valid java name */
    public static String f22679try = "26112192620585178072281450711216095106302279331075967543356458730352402940614904808344296925357963451151566288299214928800797970384179222599833925832853439888342640415696699869357785949087891627998411565633711986243813092664335597492895203854674537798891101584434089581685869173590440642207295109926796080873";

    /* renamed from: break, reason: not valid java name */
    public static byte[] m26948break(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        char[] charArray = str.toUpperCase().toCharArray();
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (m26952const(charArray[i2 + 1]) | (m26952const(charArray[i2]) << 4));
        }
        return bArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static PrivateKey m26949case(String str) throws Exception {
        return KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(Cdo.m36324new(str.getBytes())));
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[][] m26950catch(byte[] bArr, int i) {
        byte[] bArr2;
        int length = bArr.length % i != 0 ? (bArr.length / i) + 1 : bArr.length / i;
        byte[][] bArr3 = new byte[length][];
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != length - 1 || bArr.length % i == 0) {
                bArr2 = new byte[i];
                System.arraycopy(bArr, i2 * i, bArr2, 0, i);
            } else {
                bArr2 = new byte[bArr.length % i];
                System.arraycopy(bArr, i2 * i, bArr2, 0, bArr.length % i);
            }
            bArr3[i2] = bArr2;
        }
        return bArr3;
    }

    /* renamed from: class, reason: not valid java name */
    public static void m26951class() {
        try {
            KeyPair keyPairM26960try = m26960try(1024);
            PublicKey publicKey = keyPairM26960try.getPublic();
            String str = new String(Cdo.m36320else(publicKey.getEncoded()));
            StringBuilder sb = new StringBuilder();
            sb.append("公钥：");
            sb.append(str);
            PrivateKey privateKey = keyPairM26960try.getPrivate();
            String str2 = new String(Cdo.m36320else(privateKey.getEncoded()));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("私钥：");
            sb2.append(str2);
            String strM26958new = m26958new("异次元", publicKey);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("加密后：");
            sb3.append(strM26958new);
            String strM26957if = m26957if(strM26958new, privateKey);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("解密后：");
            sb4.append(strM26957if);
            RSAPublicKey rSAPublicKey = (RSAPublicKey) m26956goto(str);
            BigInteger modulus = rSAPublicKey.getModulus();
            BigInteger publicExponent = rSAPublicKey.getPublicExponent();
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) m26949case(str2);
            BigInteger modulus2 = rSAPrivateKey.getModulus();
            BigInteger privateExponent = rSAPrivateKey.getPrivateExponent();
            StringBuilder sb5 = new StringBuilder();
            sb5.append("RSAPublicKey : modulus1 ");
            sb5.append(modulus);
            sb5.append(" exponent1 ");
            sb5.append(publicExponent);
            sb5.append(" rasPrivateKey : modulus2 ");
            sb5.append(modulus2);
            sb5.append(" exponent2 ");
            sb5.append(privateExponent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static byte m26952const(char c) {
        return (byte) net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.indexOf(c);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m26953do(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public static PrivateKey m26954else(String str, String str2) throws Exception {
        return KeyFactory.getInstance("RSA").generatePrivate(new RSAPrivateKeySpec(new BigInteger(str), new BigInteger(str2)));
    }

    /* renamed from: for, reason: not valid java name */
    public static String m26955for(String str, PrivateKey privateKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(2, privateKey);
        byte[][] bArrM26950catch = m26950catch(m26948break(str), ((RSAPrivateKey) privateKey).getModulus().bitLength() / 8);
        StringBuffer stringBuffer = new StringBuffer();
        for (byte[] bArr : bArrM26950catch) {
            stringBuffer.append(new String(cipher.doFinal(bArr)));
        }
        return stringBuffer.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static PublicKey m26956goto(String str) throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Cdo.m36324new(str.getBytes())));
    }

    /* renamed from: if, reason: not valid java name */
    public static String m26957if(String str, PrivateKey privateKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, privateKey);
        byte[][] bArrM26950catch = m26950catch(m26948break(str), ((RSAPrivateKey) privateKey).getModulus().bitLength() / 8);
        StringBuffer stringBuffer = new StringBuffer();
        for (byte[] bArr : bArrM26950catch) {
            stringBuffer.append(new String(cipher.doFinal(bArr)));
        }
        return URLDecoder.decode(stringBuffer.toString(), "UTF-8");
    }

    /* renamed from: new, reason: not valid java name */
    public static String m26958new(String str, PublicKey publicKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKey);
        byte[][] bArrM26950catch = m26950catch(URLEncoder.encode(str, "UTF-8").getBytes(), (((RSAPublicKey) publicKey).getModulus().bitLength() / 8) - 11);
        StringBuffer stringBuffer = new StringBuffer();
        for (byte[] bArr : bArrM26950catch) {
            stringBuffer.append(m26953do(cipher.doFinal(bArr)));
        }
        return stringBuffer.toString();
    }

    /* renamed from: this, reason: not valid java name */
    public static PublicKey m26959this(String str, String str2) throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(str), new BigInteger(str2)));
    }

    /* renamed from: try, reason: not valid java name */
    public static KeyPair m26960try(int i) throws Exception {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(1024);
        return keyPairGenerator.generateKeyPair();
    }
}
