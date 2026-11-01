.class public final Lorg/bouncycastle/crypto/util/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/new$if;,
        Lorg/bouncycastle/crypto/util/new$for;
    }
.end annotation


# instance fields
.field private final do:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/new;->do:[B

    return-void
.end method

.method public synthetic constructor <init>([BLorg/bouncycastle/crypto/util/new$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/new;-><init>([B)V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/new;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
