.class public Lorg/bouncycastle/jce/try$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private abstract:Ljava/lang/String;

.field private break:Ljava/lang/String;

.field private case:Ljava/lang/String;

.field private catch:Ljava/lang/String;

.field private class:Ljava/lang/String;

.field private const:Ljava/lang/String;

.field private continue:Ljava/lang/String;

.field private default:Ljava/lang/String;

.field private do:Ljava/lang/String;

.field private else:Ljava/lang/String;

.field private extends:Ljava/lang/String;

.field private final:Ljava/lang/String;

.field private finally:Ljava/lang/String;

.field private for:Ljava/lang/String;

.field private goto:Ljava/lang/String;

.field private if:Ljava/lang/String;

.field private import:Ljava/lang/String;

.field private interface:Ljava/lang/String;

.field private native:Ljava/lang/String;

.field private new:Ljava/lang/String;

.field private package:Ljava/lang/String;

.field private private:Ljava/lang/String;

.field private protected:Ljava/lang/String;

.field private public:Ljava/lang/String;

.field private return:Ljava/lang/String;

.field private static:Ljava/lang/String;

.field private strictfp:Ljava/lang/String;

.field private super:Ljava/lang/String;

.field private switch:Ljava/lang/String;

.field private this:Ljava/lang/String;

.field private throw:Ljava/lang/String;

.field private throws:Ljava/lang/String;

.field private transient:Ljava/lang/String;

.field private try:Ljava/lang/String;

.field private volatile:Ljava/lang/String;

.field private while:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ldap://localhost:389"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/try$if;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->do:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->if:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->if:Ljava/lang/String;

    :goto_0
    const-string p1, "userCertificate"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->for:Ljava/lang/String;

    const-string p1, "cACertificate"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->new:Ljava/lang/String;

    const-string p1, "crossCertificatePair"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->try:Ljava/lang/String;

    const-string p1, "certificateRevocationList"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->case:Ljava/lang/String;

    const-string p1, "deltaRevocationList"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->else:Ljava/lang/String;

    const-string p1, "authorityRevocationList"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->goto:Ljava/lang/String;

    const-string p1, "attributeCertificateAttribute"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->this:Ljava/lang/String;

    const-string p1, "aACertificate"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->break:Ljava/lang/String;

    const-string p1, "attributeDescriptorCertificate"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->catch:Ljava/lang/String;

    const-string p1, "attributeCertificateRevocationList"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->class:Ljava/lang/String;

    const-string p1, "attributeAuthorityRevocationList"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->const:Ljava/lang/String;

    const-string p1, "cn"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->final:Ljava/lang/String;

    const-string p2, "cn ou o"

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->super:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->throw:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->while:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->import:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->native:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->public:Ljava/lang/String;

    const-string p2, "cn o ou"

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->return:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->static:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->switch:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->throws:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->default:Ljava/lang/String;

    const-string p2, "o ou"

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->extends:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->finally:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->package:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->private:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->abstract:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->continue:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->strictfp:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->volatile:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->interface:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/try$if;->protected:Ljava/lang/String;

    const-string p1, "uid serialNumber cn"

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->transient:Ljava/lang/String;

    return-void
.end method

.method public static synthetic abstract(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->transient:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic break(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->import:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic case(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->final:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic catch(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->native:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic class(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->if:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic const(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->public:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic continue(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->new:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic default(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->continue:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic do(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->do:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic else(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->super:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic extends(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->strictfp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic final(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->return:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic finally(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->volatile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->catch:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic goto(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->throw:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->break:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic import(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->default:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic interface(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->else:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic native(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->extends:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->class:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic package(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->interface:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic private(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->protected:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic protected(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->goto:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic public(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->finally:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic return(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->package:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic static(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->private:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic strictfp(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->try:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic super(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->static:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic switch(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->for:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic this(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->while:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic throw(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->switch:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic throws(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->abstract:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic transient(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->this:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic try(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->const:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic volatile(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->case:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic while(Lorg/bouncycastle/jce/try$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/try$if;->throws:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->throw:Ljava/lang/String;

    return-object p0
.end method

.method public B(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->import:Ljava/lang/String;

    return-object p0
.end method

.method public C(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->final:Ljava/lang/String;

    return-object p0
.end method

.method public D(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->transient:Ljava/lang/String;

    return-object p0
.end method

.method public E(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->for:Ljava/lang/String;

    return-object p0
.end method

.method public F(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->default:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->const:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->protected:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->this:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->continue:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->class:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->interface:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->catch:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->volatile:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->goto:Ljava/lang/String;

    return-object p0
.end method

.method public implements()Lorg/bouncycastle/jce/try;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->final:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->super:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->throw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->while:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->import:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->native:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->public:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->return:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->static:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->switch:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->throws:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->default:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->extends:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->finally:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->package:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->private:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->abstract:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->continue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->strictfp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->volatile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->interface:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/try$if;->protected:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jce/try;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jce/try;-><init>(Lorg/bouncycastle/jce/try$if;Lorg/bouncycastle/jce/try$do;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Necessary parameters not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instanceof(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->break:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->abstract:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->new:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->extends:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->case:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->package:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->try:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->finally:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->else:Ljava/lang/String;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->private:Ljava/lang/String;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->return:Ljava/lang/String;

    return-object p0
.end method

.method public synchronized(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->strictfp:Ljava/lang/String;

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->throws:Ljava/lang/String;

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->public:Ljava/lang/String;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->switch:Ljava/lang/String;

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->static:Ljava/lang/String;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->native:Ljava/lang/String;

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->super:Ljava/lang/String;

    return-object p0
.end method

.method public z(Ljava/lang/String;)Lorg/bouncycastle/jce/try$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/try$if;->while:Ljava/lang/String;

    return-object p0
.end method
