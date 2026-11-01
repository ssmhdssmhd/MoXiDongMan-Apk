.class public Landroid/support/v4/l80;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x199

.field public static final case:I = 0x191

.field public static final catch:I = 0x1a6

.field public static final class:I = 0x1ad

.field public static final const:I = 0x1f4

.field private static final do:Ljava/lang/String; = "ErrorUtil"

.field public static final else:I = 0x193

.field public static final final:I = 0x1f6

.field public static final for:I = -0x3e9

.field public static final goto:I = 0x194

.field public static final if:I = -0x3e8

.field public static final new:I = -0x3ea

.field public static final super:I = 0x1f7

.field public static final this:I = 0x195

.field public static final try:I = 0x190


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    const/16 v0, 0x190

    if-eq p0, v0, :cond_7

    const/16 v0, 0x191

    if-eq p0, v0, :cond_6

    const/16 v0, 0x199

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1a6

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_0

    const v0, 0x7f11001d

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 2
    invoke-static {v0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :pswitch_0
    const p0, 0x7f1100da

    .line 3
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :pswitch_1
    const p0, 0x7f1100dc

    .line 4
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :pswitch_2
    const p0, 0x7f11001c

    .line 5
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :pswitch_3
    const p0, 0x7f110107

    .line 6
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-static {v0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :pswitch_5
    const p0, 0x7f110045

    .line 8
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f1100df

    .line 9
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f110062

    .line 10
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_2
    const/high16 p0, 0x7f110000

    .line 11
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_3
    const p0, 0x7f110108

    .line 12
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_4
    const p0, 0x7f110116

    .line 13
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_5
    const p0, 0x7f11001e

    .line 14
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_6
    const p0, 0x7f1100a2

    .line 15
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    goto :goto_0

    :cond_7
    const p0, 0x7f110036

    .line 16
    invoke-static {p0}, Landroid/support/v4/v72;->do(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x193
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
