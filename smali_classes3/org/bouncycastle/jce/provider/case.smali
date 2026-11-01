.class Lorg/bouncycastle/jce/provider/case;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final for:I = 0xb

.field public static final new:I = 0xc


# instance fields
.field public do:I

.field public if:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lorg/bouncycastle/jce/provider/case;->do:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/case;->if:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/case;->do:I

    return v0
.end method

.method public for(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jce/provider/case;->do:I

    return-void
.end method

.method public if()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/case;->if:Ljava/util/Date;

    return-object v0
.end method

.method public new(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/case;->if:Ljava/util/Date;

    return-void
.end method
