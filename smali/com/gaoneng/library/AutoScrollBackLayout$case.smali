.class Lcom/gaoneng/library/AutoScrollBackLayout$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaoneng/library/AutoScrollBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation


# instance fields
.field private do:Landroid/widget/AbsListView$OnScrollListener;

.field public final synthetic if:Lcom/gaoneng/library/AutoScrollBackLayout;


# direct methods
.method public constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->if:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->do:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public do()Landroid/widget/AbsListView$OnScrollListener;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->do:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/widget/AbsListView$OnScrollListener;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->if:Lcom/gaoneng/library/AutoScrollBackLayout;

    iget-boolean p1, p1, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u52a8\u6001\u4ee3\u7406\u62e6\u622a  method="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->if:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onScroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->if:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;

    move-result-object p1

    aget-object v1, p3, v1

    check-cast v1, Landroid/view/View;

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/gaoneng/library/AutoScrollBackLayout$new;->do(Landroid/view/View;III)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "onScrollStateChanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->if:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;

    move-result-object p1

    aget-object v1, p3, v1

    check-cast v1, Landroid/view/View;

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/gaoneng/library/AutoScrollBackLayout$new;->if(Landroid/view/View;I)V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$case;->do:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
