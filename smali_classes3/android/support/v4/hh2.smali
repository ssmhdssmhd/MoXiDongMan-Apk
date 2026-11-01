.class public Landroid/support/v4/hh2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final break:I = 0x8000

.field public static final case:I = 0x8

.field public static final else:I = 0x4

.field public static final for:I = 0x40

.field public static final goto:I = 0x2

.field public static final if:I = 0x80

.field public static final new:I = 0x20

.field public static final this:I = 0x1

.field public static final try:I = 0x10


# instance fields
.field private do:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/hh2;->do:I

    iput p1, p0, Landroid/support/v4/hh2;->do:I

    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/lr0;

    iget v1, p0, Landroid/support/v4/hh2;->do:I

    invoke-direct {v0, v1}, Landroid/support/v4/lr0;-><init>(I)V

    invoke-virtual {v0}, Landroid/support/v4/lr0;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
