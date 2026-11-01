.class public final synthetic Landroid/support/v4/p02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SourceFilterView;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/SourceFilterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/p02;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p02;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-static {v0, p1, p2, p3}, Lcom/wsw/cospa/activity/SourceFilterView;->do(Lcom/wsw/cospa/activity/SourceFilterView;Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V

    return-void
.end method
