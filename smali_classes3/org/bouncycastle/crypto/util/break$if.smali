.class public Lorg/bouncycastle/crypto/util/break$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:I

.field private for:Landroid/support/v4/b1;

.field private if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/crypto/util/break$if;->do:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/util/break$if;->if:I

    sget-object v0, Lorg/bouncycastle/crypto/util/break;->try:Landroid/support/v4/b1;

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/break$if;->for:Landroid/support/v4/b1;

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/crypto/util/break$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/break$if;->do:I

    return p0
.end method

.method public static synthetic for(Lorg/bouncycastle/crypto/util/break$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/break$if;->if:I

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/crypto/util/break$if;)Landroid/support/v4/b1;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/util/break$if;->for:Landroid/support/v4/b1;

    return-object p0
.end method


# virtual methods
.method public case(Landroid/support/v4/b1;)Lorg/bouncycastle/crypto/util/break$if;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/break$if;->for:Landroid/support/v4/b1;

    return-object p0
.end method

.method public else(I)Lorg/bouncycastle/crypto/util/break$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/util/break$if;->if:I

    return-object p0
.end method

.method public new()Lorg/bouncycastle/crypto/util/break;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/util/break;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/util/break;-><init>(Lorg/bouncycastle/crypto/util/break$if;Lorg/bouncycastle/crypto/util/break$do;)V

    return-object v0
.end method

.method public try(I)Lorg/bouncycastle/crypto/util/break$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/util/break$if;->do:I

    return-object p0
.end method
