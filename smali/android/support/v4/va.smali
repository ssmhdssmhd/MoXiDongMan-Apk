.class public final synthetic Landroid/support/v4/va;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/BookListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/va;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/va;->do:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/BookListFragment;->else(Lcom/wsw/cospa/fragment/BookListFragment;Landroid/view/View;)V

    return-void
.end method
