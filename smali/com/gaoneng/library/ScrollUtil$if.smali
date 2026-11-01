.class final Lcom/gaoneng/library/ScrollUtil$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaoneng/library/ScrollUtil;->for(Landroidx/recyclerview/widget/RecyclerView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;


# direct methods
.method public constructor <init>(Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/ScrollUtil$if;->do:Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/ScrollUtil$if;->do:Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;->scrollComplete()V

    :cond_0
    return-void
.end method
