.class Lcom/qmuiteam/qmui/widget/QMUITabSegment$catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "catch"
.end annotation


# instance fields
.field private final do:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$catch;->do:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public onDoubleTap(I)V
    .locals 0

    return-void
.end method

.method public onTabReselected(I)V
    .locals 0

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$catch;->do:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onTabUnselected(I)V
    .locals 0

    return-void
.end method
