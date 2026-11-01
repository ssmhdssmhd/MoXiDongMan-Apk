.class public final Lcom/henley/shadowlayout/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henley/shadowlayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ShadowLayout:[I

.field public static final ShadowLayout_Layout:[I

.field public static final ShadowLayout_Layout_layout_gravity:I = 0x0

.field public static final ShadowLayout_android_foreground:I = 0x0

.field public static final ShadowLayout_backgroundColor:I = 0x1

.field public static final ShadowLayout_cornerRadius:I = 0x2

.field public static final ShadowLayout_cornerRadiusBL:I = 0x3

.field public static final ShadowLayout_cornerRadiusBR:I = 0x4

.field public static final ShadowLayout_cornerRadiusTL:I = 0x5

.field public static final ShadowLayout_cornerRadiusTR:I = 0x6

.field public static final ShadowLayout_foregroundColor:I = 0x7

.field public static final ShadowLayout_shadowColor:I = 0x8

.field public static final ShadowLayout_shadowDx:I = 0x9

.field public static final ShadowLayout_shadowDy:I = 0xa

.field public static final ShadowLayout_shadowMargin:I = 0xb

.field public static final ShadowLayout_shadowMarginBottom:I = 0xc

.field public static final ShadowLayout_shadowMarginLeft:I = 0xd

.field public static final ShadowLayout_shadowMarginRight:I = 0xe

.field public static final ShadowLayout_shadowMarginTop:I = 0xf

.field public static final ShadowLayout_shadowRadius:I = 0x10


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0402d2

    aput v2, v0, v1

    sput-object v0, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_Layout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010109
        0x7f040052
        0x7f04014d
        0x7f04014e
        0x7f04014f
        0x7f040150
        0x7f040151
        0x7f040227
        0x7f040530
        0x7f040531
        0x7f040532
        0x7f040533
        0x7f040534
        0x7f040535
        0x7f040536
        0x7f040537
        0x7f040538
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
