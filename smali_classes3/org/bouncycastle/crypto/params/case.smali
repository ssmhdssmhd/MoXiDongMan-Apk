.class public Lorg/bouncycastle/crypto/params/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/params/case$if;
    }
.end annotation


# static fields
.field public static final case:I = 0x10

.field public static final else:I = 0x14

.field public static final for:I = 0x4

.field public static final goto:I = 0x30

.field public static final if:I = 0x0

.field public static final new:I = 0x8

.field public static final this:I = 0x3f

.field public static final try:I = 0xc


# instance fields
.field private do:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/case;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/params/case$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/case;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/crypto/params/case;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    return-object p0
.end method


# virtual methods
.method public case()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public else()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    const/16 v1, 0xc

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public for()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    const/16 v1, 0x10

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public if()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public new()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public try()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/case;->do:Ljava/util/Hashtable;

    return-object v0
.end method
