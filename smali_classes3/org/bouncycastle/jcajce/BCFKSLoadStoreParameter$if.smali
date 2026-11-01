.class public Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private break:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

.field private case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

.field private final do:Ljava/io/OutputStream;

.field private else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

.field private final for:Ljava/security/KeyStore$ProtectionParameter;

.field private goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

.field private final if:Ljava/io/InputStream;

.field private final new:Ljava/security/Key;

.field private this:[Ljava/security/cert/X509Certificate;

.field private try:Landroid/support/v4/u91;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/break$if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/break$if;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->try(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->else(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/break;->else:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->case(Landroid/support/v4/b1;)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/break$if;->new()Lorg/bouncycastle/crypto/util/break;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try:Landroid/support/v4/u91;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this:[Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->if:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->do:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->for:Ljava/security/KeyStore$ProtectionParameter;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->new:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/PublicKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/break$if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/break$if;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->try(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->else(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/break;->else:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->case(Landroid/support/v4/b1;)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/break$if;->new()Lorg/bouncycastle/crypto/util/break;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try:Landroid/support/v4/u91;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this:[Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->if:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->do:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->for:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->new:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/break$if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/break$if;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->try(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->else(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/break;->else:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->case(Landroid/support/v4/b1;)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/break$if;->new()Lorg/bouncycastle/crypto/util/break;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try:Landroid/support/v4/u91;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this:[Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->if:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->do:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->for:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->break:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->new:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;-><init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/break$if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/break$if;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->try(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->else(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/break;->else:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->case(Landroid/support/v4/b1;)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/break$if;->new()Lorg/bouncycastle/crypto/util/break;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try:Landroid/support/v4/u91;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->if:Ljava/io/InputStream;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->do:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->for:Ljava/security/KeyStore$ProtectionParameter;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->new:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/break$if;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/break$if;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->try(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->else(I)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/break;->else:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/break$if;->case(Landroid/support/v4/b1;)Lorg/bouncycastle/crypto/util/break$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/break$if;->new()Lorg/bouncycastle/crypto/util/break;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try:Landroid/support/v4/u91;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->if:Ljava/io/InputStream;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->do:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->for:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->new:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public static synthetic break(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public static synthetic case(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    return-object p0
.end method

.method public static synthetic do(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->if:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic else(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->do:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static synthetic goto(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->break:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->for:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method public static synthetic this(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Ljava/security/Key;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->new:Ljava/security/Key;

    return-object p0
.end method

.method public static synthetic try(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;)Landroid/support/v4/u91;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try:Landroid/support/v4/u91;

    return-object p0
.end method


# virtual methods
.method public catch()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;-><init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$do;)V

    return-object v0
.end method

.method public class([Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->this:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public const(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->case:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$for;

    return-object p0
.end method

.method public final(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->else:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$new;

    return-object p0
.end method

.method public super(Landroid/support/v4/u91;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->try:Landroid/support/v4/u91;

    return-object p0
.end method

.method public throw(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$if;->goto:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$try;

    return-object p0
.end method
