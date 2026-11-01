.class public Lorg/bouncycastle/pqc/crypto/xmss/package$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private case:[B

.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private else:Lorg/bouncycastle/pqc/crypto/xmss/do;

.field private for:[B

.field private goto:[B

.field private if:I

.field private new:[B

.field private this:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private try:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->if:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->for:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->new:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->try:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->case:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->else:Lorg/bouncycastle/pqc/crypto/xmss/do;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->goto:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->this:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-void
.end method

.method public static synthetic case(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->try:[B

    return-object p0
.end method

.method public static synthetic do(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object p0
.end method

.method public static synthetic else(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->case:[B

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->this:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object p0
.end method

.method public static synthetic goto(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/do;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->else:Lorg/bouncycastle/pqc/crypto/xmss/do;

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->goto:[B

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->for:[B

    return-object p0
.end method

.method public static synthetic this(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->if:I

    return p0
.end method

.method public static synthetic try(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->new:[B

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/pqc/crypto/xmss/package;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/package;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/package$if;Lorg/bouncycastle/pqc/crypto/xmss/package$do;)V

    return-object v0
.end method

.method public catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->else:Lorg/bouncycastle/pqc/crypto/xmss/do;

    return-object p0
.end method

.method public class(I)Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->if:I

    return-object p0
.end method

.method public const([BLorg/bouncycastle/pqc/crypto/xmss/finally;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->goto:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->this:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object p0
.end method

.method public final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->try:[B

    return-object p0
.end method

.method public super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->case:[B

    return-object p0
.end method

.method public throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->new:[B

    return-object p0
.end method

.method public while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->for:[B

    return-object p0
.end method
