.class Lcom/gaoneng/library/AutoScrollBackLayout$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaoneng/library/AutoScrollBackLayout$try;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic if:Lcom/gaoneng/library/AutoScrollBackLayout$try;


# direct methods
.method public constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout$try;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$try$do;->if:Lcom/gaoneng/library/AutoScrollBackLayout$try;

    iput-object p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout$try$do;->do:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$try$do;->do:Landroid/view/View;

    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$try$do;->if:Lcom/gaoneng/library/AutoScrollBackLayout$try;

    iget-object v1, v1, Lcom/gaoneng/library/AutoScrollBackLayout$try;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {v1}, Lcom/gaoneng/library/AutoScrollBackLayout;->for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
