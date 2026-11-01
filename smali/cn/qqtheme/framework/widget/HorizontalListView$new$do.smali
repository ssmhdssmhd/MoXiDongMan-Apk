.class Lcn/qqtheme/framework/widget/HorizontalListView$new$do;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/qqtheme/framework/widget/HorizontalListView$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lcn/qqtheme/framework/widget/HorizontalListView$new;


# direct methods
.method private constructor <init>(Lcn/qqtheme/framework/widget/HorizontalListView$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/widget/HorizontalListView$new$do;->do:Lcn/qqtheme/framework/widget/HorizontalListView$new;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/qqtheme/framework/widget/HorizontalListView$new;Lcn/qqtheme/framework/widget/HorizontalListView$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/qqtheme/framework/widget/HorizontalListView$new$do;-><init>(Lcn/qqtheme/framework/widget/HorizontalListView$new;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
