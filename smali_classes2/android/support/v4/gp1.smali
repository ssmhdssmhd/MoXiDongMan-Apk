.class public Landroid/support/v4/gp1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/gp1$do;
    }
.end annotation


# static fields
.field public static final abstract:I = 0x79

.field public static final break:I = 0x8

.field public static final case:I = 0x4

.field public static final catch:I = 0x9

.field public static final class:I = 0xa

.field public static final const:I = 0xb

.field public static final continue:I = 0x8d

.field public static final default:I = 0x2b

.field public static final else:I = 0x5

.field public static final extends:I = 0x2c

.field public static final final:I = 0xc

.field public static final finally:I = 0x51

.field public static final for:I = 0x1

.field public static final goto:I = 0x6

.field public static final import:I = 0x11

.field public static final native:I = 0x10

.field public static final new:I = 0x2

.field public static final package:I = 0x52

.field public static final private:I = 0x65

.field public static final public:I = 0x15

.field public static final return:I = 0x16

.field public static final static:I = 0x17

.field public static final super:I = 0xd

.field public static final switch:I = 0x29

.field public static final this:I = 0x7

.field public static final throw:I = 0xe

.field public static final throws:I = 0x2a

.field public static final try:I = 0x3

.field public static final while:I = 0xf


# instance fields
.field private do:I

.field private if:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/gp1;->do:I

    .line 3
    iput-object p2, p0, Landroid/support/v4/gp1;->if:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/gp1;->do:I

    return v0
.end method

.method public if(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/gp1;->if:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
