.class public final Lorg/bouncycastle/crypto/for$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final for:Lorg/bouncycastle/crypto/for$if;

.field public static final new:Lorg/bouncycastle/crypto/for$if;

.field public static final try:Lorg/bouncycastle/crypto/for$if;


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/for$if;

    const-class v1, Landroid/support/v4/th2;

    const-string v2, "ecImplicitlyCA"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/for$if;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/for$if;->for:Lorg/bouncycastle/crypto/for$if;

    new-instance v0, Lorg/bouncycastle/crypto/for$if;

    const-class v1, Landroid/support/v4/ou;

    const-string v2, "dhDefaultParams"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/for$if;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/for$if;->new:Lorg/bouncycastle/crypto/for$if;

    new-instance v0, Lorg/bouncycastle/crypto/for$if;

    const-class v1, Landroid/support/v4/hv;

    const-string v2, "dsaDefaultParams"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/for$if;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/bouncycastle/crypto/for$if;->try:Lorg/bouncycastle/crypto/for$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/for$if;->do:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/for$if;->if:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/crypto/for$if;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/for$if;->do:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/crypto/for$if;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/for$if;->if:Ljava/lang/Class;

    return-object p0
.end method
