.class public final synthetic Landroid/support/v4/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/listener/OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookShelfFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/bb;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bb;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->break(Lcom/wsw/cospa/fragment/BookShelfFragment;I)V

    return-void
.end method
