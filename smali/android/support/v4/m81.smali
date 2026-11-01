.class public final synthetic Landroid/support/v4/m81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/OriginChooseDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/OriginChooseDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/m81;->do:Lcom/wsw/cospa/widget/OriginChooseDialog;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m81;->do:Lcom/wsw/cospa/widget/OriginChooseDialog;

    invoke-static {v0}, Lcom/wsw/cospa/widget/OriginChooseDialog;->do(Lcom/wsw/cospa/widget/OriginChooseDialog;)V

    return-void
.end method
