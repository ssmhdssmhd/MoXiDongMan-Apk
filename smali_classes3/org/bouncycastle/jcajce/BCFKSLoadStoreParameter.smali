.class public Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.super Landroid/support/v4/x5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;
    }
.end annotation


# instance fields
.field private final break:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

.field private final case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

.field private final else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

.field private final goto:Ljava/security/Key;

.field private final new:Landroid/support/v4/u91;

.field private final this:[Ljava/security/cert/X509Certificate;

.field private final try:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)V
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->do(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->for(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->new(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/x5;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Landroid/support/v4/u91;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->new:Landroid/support/v4/u91;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->try:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/security/Key;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->goto:Ljava/security/Key;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->break(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->this:[Ljava/security/cert/X509Certificate;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->if(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->break:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;-><init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)V

    return-void
.end method


# virtual methods
.method public case()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    return-object v0
.end method

.method public else()Landroid/support/v4/u91;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->new:Landroid/support/v4/u91;

    return-object v0
.end method

.method public for()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->break:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    return-object v0
.end method

.method public new()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->this:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public this()Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->goto:Ljava/security/Key;

    return-object v0
.end method

.method public try()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->try:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    return-object v0
.end method
