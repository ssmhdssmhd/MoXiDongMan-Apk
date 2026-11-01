.class public Landroid/support/v4/mh1;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# static fields
.field private static do:Landroid/support/v4/mh1;

.field private static if:Landroid/support/v4/lh1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/lh1;

    invoke-direct {v0}, Landroid/support/v4/lh1;-><init>()V

    sput-object v0, Landroid/support/v4/mh1;->if:Landroid/support/v4/lh1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/mh1;->do:Landroid/support/v4/mh1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/mh1;

    invoke-direct {v0}, Landroid/support/v4/mh1;-><init>()V

    sput-object v0, Landroid/support/v4/mh1;->do:Landroid/support/v4/mh1;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/mh1;->do:Landroid/support/v4/mh1;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/mh1;->if:Landroid/support/v4/lh1;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/lh1;->if(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
