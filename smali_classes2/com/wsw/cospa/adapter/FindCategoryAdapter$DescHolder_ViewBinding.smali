.class public Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'tv_item\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;->tv_item:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;->tv_item:Landroid/widget/TextView;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
