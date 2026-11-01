package okhttp3;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.wp0;
import android.support.v4.yr0;
import android.support.v4.z41;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Cfinal;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.Lazy;
import kotlin.collections.Cthrow;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;
import okhttp3.internal.Util;
import org.slf4j.helpers.MessageFormatter;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 *2\u00020\u0001:\u0001*B;\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0012\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0&¢\u0006\u0004\b(\u0010)J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0007¢\u0006\u0004\b\u0013\u0010\rJ\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0015\u0010\u0011J\u0013\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0016J\b\u0010\u001d\u001a\u00020\u001cH\u0016R#\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8G@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u000e\u0010\rR\u0019\u0010\u0005\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010 \u001a\u0004\b\u0005\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00068\u0007@\u0006¢\u0006\f\n\u0004\b\t\u0010!\u001a\u0004\b\t\u0010\bR\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0007@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\"\u001a\u0004\b\u0014\u0010\rR\u001a\u0010%\u001a\u00020\u001c*\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u000f8G@\u0006¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0011R\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u000f8G@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0011¨\u0006+"}, d2 = {"Lokhttp3/Handshake;", "", "Lokhttp3/TlsVersion;", "-deprecated_tlsVersion", "()Lokhttp3/TlsVersion;", "tlsVersion", "Lokhttp3/CipherSuite;", "-deprecated_cipherSuite", "()Lokhttp3/CipherSuite;", "cipherSuite", "", "Ljava/security/cert/Certificate;", "-deprecated_peerCertificates", "()Ljava/util/List;", "peerCertificates", "Ljava/security/Principal;", "-deprecated_peerPrincipal", "()Ljava/security/Principal;", "peerPrincipal", "-deprecated_localCertificates", "localCertificates", "-deprecated_localPrincipal", "localPrincipal", "other", "", "equals", "", "hashCode", "", "toString", "peerCertificates$delegate", "Lkotlin/Lazy;", "Lokhttp3/TlsVersion;", "Lokhttp3/CipherSuite;", "Ljava/util/List;", "getName", "(Ljava/security/cert/Certificate;)Ljava/lang/String;", "name", "Lkotlin/Function0;", "peerCertificatesFn", "<init>", "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Handshake {
    public static final Companion Companion = new Companion(null);

    @m41
    private final CipherSuite cipherSuite;

    @m41
    private final List<Certificate> localCertificates;

    @m41
    private final Lazy peerCertificates$delegate;

    @m41
    private final TlsVersion tlsVersion;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004*\f\u0012\u0006\b\u0001\u0012\u00020\u0003\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\b*\u00020\u0007H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\r\u0010\nJ4\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004H\u0007¨\u0006\u0016"}, d2 = {"Lokhttp3/Handshake$Companion;", "", "", "Ljava/security/cert/Certificate;", "", "toImmutableList", "([Ljava/security/cert/Certificate;)Ljava/util/List;", "Ljavax/net/ssl/SSLSession;", "Lokhttp3/Handshake;", "get", "(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;", "handshake", "sslSession", "-deprecated_get", "Lokhttp3/TlsVersion;", "tlsVersion", "Lokhttp3/CipherSuite;", "cipherSuite", "peerCertificates", "localCertificates", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        private final List<Certificate> toImmutableList(Certificate[] certificateArr) {
            return certificateArr != null ? Util.immutableListOf((Certificate[]) Arrays.copyOf(certificateArr, certificateArr.length)) : Cthrow.m30175continue();
        }

        @m41
        @wp0(name = "-deprecated_get")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "sslSession.handshake()", imports = {}))
        public final Handshake a(@m41 SSLSession sslSession) throws IOException {
            Csuper.m30700throw(sslSession, "sslSession");
            return get(sslSession);
        }

        @m41
        @aq0
        @wp0(name = "get")
        public final Handshake get(@m41 SSLSession handshake) throws IOException {
            List<Certificate> listM30175continue;
            Csuper.m30700throw(handshake, "$this$handshake");
            String cipherSuite = handshake.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null".toString());
            }
            int iHashCode = cipherSuite.hashCode();
            if (iHashCode == 1019404634 ? cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") : iHashCode == 1208658923 && cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                throw new IOException("cipherSuite == " + cipherSuite);
            }
            CipherSuite cipherSuiteForJavaName = CipherSuite.Companion.forJavaName(cipherSuite);
            String protocol = handshake.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null".toString());
            }
            if (Csuper.m30676else("NONE", protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            TlsVersion tlsVersionForJavaName = TlsVersion.Companion.forJavaName(protocol);
            try {
                listM30175continue = toImmutableList(handshake.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                listM30175continue = Cthrow.m30175continue();
            }
            return new Handshake(tlsVersionForJavaName, cipherSuiteForJavaName, toImmutableList(handshake.getLocalCertificates()), new Handshake$Companion$handshake$1(listM30175continue));
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        @m41
        @aq0
        public final Handshake get(@m41 TlsVersion tlsVersion, @m41 CipherSuite cipherSuite, @m41 List<? extends Certificate> peerCertificates, @m41 List<? extends Certificate> localCertificates) {
            Csuper.m30700throw(tlsVersion, "tlsVersion");
            Csuper.m30700throw(cipherSuite, "cipherSuite");
            Csuper.m30700throw(peerCertificates, "peerCertificates");
            Csuper.m30700throw(localCertificates, "localCertificates");
            return new Handshake(tlsVersion, cipherSuite, Util.toImmutableList(localCertificates), new Handshake$Companion$get$1(Util.toImmutableList(peerCertificates)));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "Ljava/security/cert/Certificate;", "invoke", "()Ljava/util/List;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
    /* renamed from: okhttp3.Handshake$peerCertificates$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass2 extends yr0 implements Function0<List<? extends Certificate>> {
        public final /* synthetic */ Function0 $peerCertificatesFn;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Function0 function0) {
            super(0);
            this.$peerCertificatesFn = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        @m41
        public final List<? extends Certificate> invoke() {
            try {
                return (List) this.$peerCertificatesFn.invoke();
            } catch (SSLPeerUnverifiedException unused) {
                return Cthrow.m30175continue();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(@m41 TlsVersion tlsVersion, @m41 CipherSuite cipherSuite, @m41 List<? extends Certificate> localCertificates, @m41 Function0<? extends List<? extends Certificate>> peerCertificatesFn) {
        Csuper.m30700throw(tlsVersion, "tlsVersion");
        Csuper.m30700throw(cipherSuite, "cipherSuite");
        Csuper.m30700throw(localCertificates, "localCertificates");
        Csuper.m30700throw(peerCertificatesFn, "peerCertificatesFn");
        this.tlsVersion = tlsVersion;
        this.cipherSuite = cipherSuite;
        this.localCertificates = localCertificates;
        this.peerCertificates$delegate = Cfinal.m30446for(new AnonymousClass2(peerCertificatesFn));
    }

    @m41
    @aq0
    @wp0(name = "get")
    public static final Handshake get(@m41 SSLSession sSLSession) throws IOException {
        return Companion.get(sSLSession);
    }

    @m41
    @aq0
    public static final Handshake get(@m41 TlsVersion tlsVersion, @m41 CipherSuite cipherSuite, @m41 List<? extends Certificate> list, @m41 List<? extends Certificate> list2) {
        return Companion.get(tlsVersion, cipherSuite, list, list2);
    }

    private final String getName(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        Csuper.m30696super(type, "type");
        return type;
    }

    @m41
    @wp0(name = "-deprecated_cipherSuite")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "cipherSuite", imports = {}))
    public final CipherSuite a() {
        return this.cipherSuite;
    }

    @m41
    @wp0(name = "-deprecated_localCertificates")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "localCertificates", imports = {}))
    public final List<Certificate> b() {
        return this.localCertificates;
    }

    @wp0(name = "-deprecated_localPrincipal")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "localPrincipal", imports = {}))
    public final Principal c() {
        return localPrincipal();
    }

    @m41
    @wp0(name = "cipherSuite")
    public final CipherSuite cipherSuite() {
        return this.cipherSuite;
    }

    @m41
    @wp0(name = "-deprecated_peerCertificates")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "peerCertificates", imports = {}))
    public final List<Certificate> d() {
        return peerCertificates();
    }

    @wp0(name = "-deprecated_peerPrincipal")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "peerPrincipal", imports = {}))
    public final Principal e() {
        return peerPrincipal();
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.tlsVersion == this.tlsVersion && Csuper.m30676else(handshake.cipherSuite, this.cipherSuite) && Csuper.m30676else(handshake.peerCertificates(), peerCertificates()) && Csuper.m30676else(handshake.localCertificates, this.localCertificates)) {
                return true;
            }
        }
        return false;
    }

    @m41
    @wp0(name = "-deprecated_tlsVersion")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "tlsVersion", imports = {}))
    public final TlsVersion f() {
        return this.tlsVersion;
    }

    public int hashCode() {
        return ((((((527 + this.tlsVersion.hashCode()) * 31) + this.cipherSuite.hashCode()) * 31) + peerCertificates().hashCode()) * 31) + this.localCertificates.hashCode();
    }

    @m41
    @wp0(name = "localCertificates")
    public final List<Certificate> localCertificates() {
        return this.localCertificates;
    }

    @wp0(name = "localPrincipal")
    @z41
    public final Principal localPrincipal() {
        Object objG1 = kotlin.collections.Cfinal.G1(this.localCertificates);
        if (!(objG1 instanceof X509Certificate)) {
            objG1 = null;
        }
        X509Certificate x509Certificate = (X509Certificate) objG1;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    @m41
    @wp0(name = "peerCertificates")
    public final List<Certificate> peerCertificates() {
        return (List) this.peerCertificates$delegate.getValue();
    }

    @wp0(name = "peerPrincipal")
    @z41
    public final Principal peerPrincipal() {
        Object objG1 = kotlin.collections.Cfinal.G1(peerCertificates());
        if (!(objG1 instanceof X509Certificate)) {
            objG1 = null;
        }
        X509Certificate x509Certificate = (X509Certificate) objG1;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    @m41
    @wp0(name = "tlsVersion")
    public final TlsVersion tlsVersion() {
        return this.tlsVersion;
    }

    @m41
    public String toString() {
        List<Certificate> listPeerCertificates = peerCertificates();
        ArrayList arrayList = new ArrayList(kotlin.collections.Cwhile.l(listPeerCertificates, 10));
        Iterator<T> it = listPeerCertificates.iterator();
        while (it.hasNext()) {
            arrayList.add(getName((Certificate) it.next()));
        }
        String string = arrayList.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Handshake{");
        sb.append("tlsVersion=");
        sb.append(this.tlsVersion);
        sb.append(' ');
        sb.append("cipherSuite=");
        sb.append(this.cipherSuite);
        sb.append(' ');
        sb.append("peerCertificates=");
        sb.append(string);
        sb.append(' ');
        sb.append("localCertificates=");
        List<Certificate> list = this.localCertificates;
        ArrayList arrayList2 = new ArrayList(kotlin.collections.Cwhile.l(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(getName((Certificate) it2.next()));
        }
        sb.append(arrayList2);
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }
}
