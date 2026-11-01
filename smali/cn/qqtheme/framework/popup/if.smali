.class public abstract Lcn/qqtheme/framework/popup/if;
.super Lcn/qqtheme/framework/popup/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcn/qqtheme/framework/popup/do<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public abstract:Landroid/widget/TextView;

.field public break:I

.field public catch:I

.field public class:I

.field public const:I

.field public continue:Landroid/view/View;

.field public default:I

.field public extends:I

.field public final:I

.field public finally:I

.field public import:Ljava/lang/CharSequence;

.field public interface:Landroid/view/View;

.field public native:Ljava/lang/CharSequence;

.field public package:I

.field public private:Landroid/widget/TextView;

.field public public:Ljava/lang/CharSequence;

.field public return:I

.field public static:I

.field public strictfp:Landroid/view/View;

.field public super:I

.field public switch:I

.field public this:Z

.field public throw:I

.field public throws:I

.field public volatile:Landroid/view/View;

.field public while:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/qqtheme/framework/popup/do;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/qqtheme/framework/popup/if;->this:Z

    const v1, -0xcc4a1b

    .line 3
    iput v1, p0, Lcn/qqtheme/framework/popup/if;->break:I

    .line 4
    iput v0, p0, Lcn/qqtheme/framework/popup/if;->catch:I

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcn/qqtheme/framework/popup/if;->class:I

    const/16 v3, 0x28

    .line 6
    iput v3, p0, Lcn/qqtheme/framework/popup/if;->const:I

    const/16 v3, 0xf

    .line 7
    iput v3, p0, Lcn/qqtheme/framework/popup/if;->final:I

    const/4 v3, 0x0

    .line 8
    iput v3, p0, Lcn/qqtheme/framework/popup/if;->super:I

    .line 9
    iput v3, p0, Lcn/qqtheme/framework/popup/if;->throw:I

    .line 10
    iput-boolean v0, p0, Lcn/qqtheme/framework/popup/if;->while:Z

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcn/qqtheme/framework/popup/if;->import:Ljava/lang/CharSequence;

    .line 12
    iput-object v0, p0, Lcn/qqtheme/framework/popup/if;->native:Ljava/lang/CharSequence;

    .line 13
    iput-object v0, p0, Lcn/qqtheme/framework/popup/if;->public:Ljava/lang/CharSequence;

    .line 14
    iput v1, p0, Lcn/qqtheme/framework/popup/if;->return:I

    .line 15
    iput v1, p0, Lcn/qqtheme/framework/popup/if;->static:I

    const/high16 v0, -0x1000000

    .line 16
    iput v0, p0, Lcn/qqtheme/framework/popup/if;->switch:I

    const v0, -0xfd7732

    .line 17
    iput v0, p0, Lcn/qqtheme/framework/popup/if;->throws:I

    .line 18
    iput v3, p0, Lcn/qqtheme/framework/popup/if;->default:I

    .line 19
    iput v3, p0, Lcn/qqtheme/framework/popup/if;->extends:I

    .line 20
    iput v3, p0, Lcn/qqtheme/framework/popup/if;->finally:I

    .line 21
    iput v2, p0, Lcn/qqtheme/framework/popup/if;->package:I

    const/high16 v0, 0x1040000

    .line 22
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/qqtheme/framework/popup/if;->import:Ljava/lang/CharSequence;

    const v0, 0x104000a

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/qqtheme/framework/popup/if;->native:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->return:I

    :goto_0
    return-void
.end method

.method public abstract()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    const-string v1, "please call show at first"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
            to = 0x28L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->default:I

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_1
    iput-boolean p1, p0, Lcn/qqtheme/framework/popup/if;->while:Z

    :goto_1
    return-void
.end method

.method public final catch()Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget v1, p0, Lcn/qqtheme/framework/popup/if;->package:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 8
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/if;->interface()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10
    :cond_0
    iget-boolean v3, p0, Lcn/qqtheme/framework/popup/if;->this:Z

    if-eqz v3, :cond_1

    .line 11
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcn/qqtheme/framework/popup/if;->catch:I

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget v4, p0, Lcn/qqtheme/framework/popup/if;->break:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    :cond_1
    iget-object v3, p0, Lcn/qqtheme/framework/popup/if;->volatile:Landroid/view/View;

    if-nez v3, :cond_2

    .line 16
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/if;->strictfp()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/qqtheme/framework/popup/if;->volatile:Landroid/view/View;

    .line 17
    :cond_2
    iget v3, p0, Lcn/qqtheme/framework/popup/if;->super:I

    if-lez v3, :cond_3

    .line 18
    iget-object v4, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    int-to-float v3, v3

    invoke-static {v4, v3}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 19
    :goto_0
    iget v4, p0, Lcn/qqtheme/framework/popup/if;->throw:I

    if-lez v4, :cond_4

    .line 20
    iget-object v5, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    int-to-float v4, v4

    invoke-static {v5, v4}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 21
    :goto_1
    iget-object v5, p0, Lcn/qqtheme/framework/popup/if;->volatile:Landroid/view/View;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    iget-object v3, p0, Lcn/qqtheme/framework/popup/if;->volatile:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 23
    iget-object v4, p0, Lcn/qqtheme/framework/popup/if;->volatile:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    :cond_5
    iget-object v3, p0, Lcn/qqtheme/framework/popup/if;->volatile:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/if;->volatile()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    return-object v0
.end method

.method public continue()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->continue:Landroid/view/View;

    const-string v1, "please call show at first"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->super:I

    .line 2
    iput p2, p0, Lcn/qqtheme/framework/popup/if;->throw:I

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/popup/if;->interface:Landroid/view/View;

    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/popup/if;->strictfp:Landroid/view/View;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->throws:I

    return-void
.end method

.method public h(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/qqtheme/framework/popup/if;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/qqtheme/framework/popup/if;->native:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public implements(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->package:I

    return-void
.end method

.method public instanceof(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/qqtheme/framework/popup/if;->synchronized(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public interface()Landroid/view/View;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->strictfp:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    iget v2, p0, Lcn/qqtheme/framework/popup/if;->const:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v1

    .line 4
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget v1, p0, Lcn/qqtheme/framework/popup/if;->class:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v1, 0x10

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 7
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    .line 8
    iget-boolean v2, p0, Lcn/qqtheme/framework/popup/if;->while:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    .line 10
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xf

    .line 11
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12
    iget-object v6, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v1, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 14
    iget-object v1, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    iget v7, p0, Lcn/qqtheme/framework/popup/if;->final:I

    int-to-float v7, v7

    invoke-static {v1, v7}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v1

    .line 16
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->import:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 18
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    iget-object v8, p0, Lcn/qqtheme/framework/popup/if;->import:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_2
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    iget v8, p0, Lcn/qqtheme/framework/popup/if;->return:I

    iget v9, p0, Lcn/qqtheme/framework/popup/if;->throws:I

    invoke-static {v8, v9}, Landroid/support/v4/ur;->final(II)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 20
    iget v7, p0, Lcn/qqtheme/framework/popup/if;->default:I

    if-eqz v7, :cond_3

    .line 21
    iget-object v8, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    :cond_3
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    new-instance v8, Lcn/qqtheme/framework/popup/if$do;

    invoke-direct {v8, p0}, Lcn/qqtheme/framework/popup/if$do;-><init>(Lcn/qqtheme/framework/popup/if;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 24
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->continue:Landroid/view/View;

    if-nez v7, :cond_6

    .line 25
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 27
    iget-object v9, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    iget v10, p0, Lcn/qqtheme/framework/popup/if;->final:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v9

    .line 28
    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 29
    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v9, 0xe

    .line 30
    invoke-virtual {v8, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 31
    invoke-virtual {v8, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 32
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 34
    iget-object v8, p0, Lcn/qqtheme/framework/popup/if;->public:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 35
    iget-object v8, p0, Lcn/qqtheme/framework/popup/if;->public:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_4
    iget v8, p0, Lcn/qqtheme/framework/popup/if;->switch:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget v8, p0, Lcn/qqtheme/framework/popup/if;->finally:I

    if-eqz v8, :cond_5

    int-to-float v8, v8

    .line 38
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    :cond_5
    iput-object v7, p0, Lcn/qqtheme/framework/popup/if;->continue:Landroid/view/View;

    .line 40
    :cond_6
    iget-object v7, p0, Lcn/qqtheme/framework/popup/if;->continue:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    .line 42
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 43
    invoke-virtual {v7, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44
    invoke-virtual {v7, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45
    iget-object v2, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v2, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 47
    iget-object v2, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    iget-object v2, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49
    iget-object v1, p0, Lcn/qqtheme/framework/popup/if;->native:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 50
    iget-object v1, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/qqtheme/framework/popup/if;->native:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_7
    iget-object v1, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    iget v2, p0, Lcn/qqtheme/framework/popup/if;->static:I

    iget v3, p0, Lcn/qqtheme/framework/popup/if;->throws:I

    invoke-static {v2, v3}, Landroid/support/v4/ur;->final(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    iget v1, p0, Lcn/qqtheme/framework/popup/if;->extends:I

    if-eqz v1, :cond_8

    .line 53
    iget-object v2, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    :cond_8
    iget-object v1, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    new-instance v2, Lcn/qqtheme/framework/popup/if$if;

    invoke-direct {v2, p0}, Lcn/qqtheme/framework/popup/if$if;-><init>(Lcn/qqtheme/framework/popup/if;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public j(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->abstract:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->static:I

    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
            to = 0x28L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->extends:I

    return-void
.end method

.method public l(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/qqtheme/framework/popup/if;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->continue:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/qqtheme/framework/popup/if;->public:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public n(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->continue:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->switch:I

    :goto_0
    return-void
.end method

.method public o(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
            to = 0x28L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->finally:I

    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/popup/if;->continue:Landroid/view/View;

    return-void
.end method

.method public private()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    const-string v1, "please call show at first"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public protected()V
    .locals 0

    return-void
.end method

.method public q(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->class:I

    return-void
.end method

.method public r(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
            to = 0x50L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->const:I

    return-void
.end method

.method public s(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->break:I

    return-void
.end method

.method public abstract strictfp()Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public synchronized(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->private:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/qqtheme/framework/popup/if;->import:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->catch:I

    return-void
.end method

.method public transient()V
    .locals 0

    return-void
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/qqtheme/framework/popup/if;->this:Z

    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/popup/if;->final:I

    return-void
.end method

.method public volatile()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/if;->interface:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
