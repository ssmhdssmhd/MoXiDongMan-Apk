.class Lcom/gaoneng/library/AutoScrollBackLayout$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaoneng/library/AutoScrollBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation


# instance fields
.field public final synthetic do:Lcom/gaoneng/library/AutoScrollBackLayout;


# direct methods
.method private constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$try;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout$try;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout$try;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-static {v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->if(Lcom/gaoneng/library/AutoScrollBackLayout;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gaoneng/library/AutoScrollBackLayout$try$do;

    invoke-direct {v1, p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout$try$do;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout$try;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/gaoneng/library/ScrollUtil;->do(Landroid/view/View;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V

    return-void
.end method
