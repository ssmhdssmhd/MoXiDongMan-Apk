.class public Lorg/bouncycastle/pqc/crypto/xmss/continue$if;
.super Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/continue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private case:I

.field private else:[B

.field private final try:Lorg/bouncycastle/pqc/crypto/xmss/finally;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->case:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->else:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-void
.end method

.method public static synthetic break(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->else:[B

    return-object p0
.end method

.method public static synthetic this(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->case:I

    return p0
.end method


# virtual methods
.method public catch()Lorg/bouncycastle/pqc/crypto/xmss/continue;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/continue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/continue;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;Lorg/bouncycastle/pqc/crypto/xmss/continue$do;)V

    return-object v0
.end method

.method public class(I)Lorg/bouncycastle/pqc/crypto/xmss/continue$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->case:I

    return-object p0
.end method

.method public const([B)Lorg/bouncycastle/pqc/crypto/xmss/continue$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->else:[B

    return-object p0
.end method

.method public final([B)Lorg/bouncycastle/pqc/crypto/xmss/continue$if;
    .locals 5

    const-string v0, "signature == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v2

    mul-int v1, v1, v0

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/support/v4/ib1;->do([BI)I

    move-result v3

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->case:I

    const/4 v3, 0x4

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->else:[B

    add-int/2addr v3, v0

    add-int/2addr v1, v2

    invoke-static {p1, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->else([B)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    return-object p0
.end method

.method public bridge synthetic try()Lorg/bouncycastle/pqc/crypto/xmss/abstract;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->catch()Lorg/bouncycastle/pqc/crypto/xmss/continue;

    move-result-object v0

    return-object v0
.end method
