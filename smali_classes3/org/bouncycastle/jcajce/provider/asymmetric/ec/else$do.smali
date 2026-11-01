.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;Z)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$do;->if:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$do;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Landroid/support/v4/a4;)[B
    .locals 1

    check-cast p1, Landroid/support/v4/k50;

    invoke-virtual {p1}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$do;->do:Z

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/new;->const(Z)[B

    move-result-object p1

    return-object p1
.end method
