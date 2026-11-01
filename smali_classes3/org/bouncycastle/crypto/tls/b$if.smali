.class Lorg/bouncycastle/crypto/tls/b$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:J

.field private if:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/b$if;->do:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/b$if;->if:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/tls/b$do;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/b$if;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized do(S)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/n72;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/b$if;->if:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/b$if;->do:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/tls/b$if;->do:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/b$if;->if:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/support/v4/n72;

    invoke-direct {v0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
