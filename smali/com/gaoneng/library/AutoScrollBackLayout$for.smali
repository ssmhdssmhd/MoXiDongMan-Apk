.class Lcom/gaoneng/library/AutoScrollBackLayout$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaoneng/library/AutoScrollBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic do:Lcom/gaoneng/library/AutoScrollBackLayout;


# direct methods
.method private constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout$for;->do:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout$for;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
