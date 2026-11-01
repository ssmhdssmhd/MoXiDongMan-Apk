.class public Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;
.super Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/span/QMUIOnSpanClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkLongClickListener;,
        Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkClickListener;
    }
.end annotation


# static fields
.field private static final const:Ljava/lang/String; = "LinkTextView"

.field private static final final:I = 0x3e8

.field private static final import:J

.field public static super:I = 0x7

.field private static throw:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final while:J = 0xc8L


# instance fields
.field private break:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkLongClickListener;

.field private case:Landroid/content/res/ColorStateList;

.field private catch:J

.field private class:Landroid/os/Handler;

.field private else:Landroid/content/res/ColorStateList;

.field private goto:I

.field private this:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkClickListener;

.field private try:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->throw:Ljava/util/Set;

    const-string v1, "tel"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->throw:Ljava/util/Set;

    const-string v1, "mailto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->throw:Ljava/util/Set;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->throw:Ljava/util/Set;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->import:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->else:Landroid/content/res/ColorStateList;

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$color;->qmui_s_link_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->case:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->else:Landroid/content/res/ColorStateList;

    .line 6
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->case:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->try:Ljava/lang/CharSequence;

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->catch:J

    .line 10
    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$do;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$do;-><init>(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->class:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoLinkMask()I

    move-result v0

    sget v1, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->super:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 13
    invoke-static {}, Landroid/support/v4/mh1;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodCompat(Landroid/text/method/MovementMethod;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 15
    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUILinkTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUILinkTextView_qmui_linkBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->else:Landroid/content/res/ColorStateList;

    .line 17
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUILinkTextView_qmui_linkTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->case:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->try:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->setChangeAlphaWhenPress(Z)V

    return-void
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;)Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->this:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkClickListener;

    return-object p0
.end method

.method private try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->class:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->catch:J

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->break:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkLongClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkLongClickListener;->onLongClick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public else(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    return-void
.end method

.method public getAutoLinkMaskCompat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    return v0
.end method

.method public new(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    return-void
.end method

.method public onSpanClick(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->catch:J

    sub-long/2addr v1, v3

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSpanClick clickUpTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->class:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->try()V

    return v0

    :cond_1
    const-wide/16 v5, 0xc8

    cmp-long v3, v5, v1

    if-gez v3, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSpanClick interrupted because of TAP_TIMEOUT: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return v0

    .line 6
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_3
    sget-object v5, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->throw:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    sget-wide v5, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->import:J

    sub-long/2addr v5, v1

    .line 10
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->class:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 12
    iput v4, v1, Landroid/os/Message;->what:I

    .line 13
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->class:Landroid/os/Handler;

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->class:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent hasSingleTap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->catch:J

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->try()V

    .line 6
    :goto_0
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performLongClick()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->case(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 4
    :cond_2
    invoke-super {p0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setAutoLinkMaskCompat(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    return-void
.end method

.method public setLinkColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->case:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setOnLinkClickListener(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->this:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkClickListener;

    return-void
.end method

.method public setOnLinkLongClickListener(Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->break:Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView$OnLinkLongClickListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->try:Ljava/lang/CharSequence;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    iget p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->goto:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->case:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/textview/QMUILinkTextView;->else:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1, v1, v2, p0}, Lcom/qmuiteam/qmui/link/QMUILinkify;->new(Landroid/text/Spannable;ILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/qmuiteam/qmui/span/QMUIOnSpanClickListener;)Z

    move-object p1, v0

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
