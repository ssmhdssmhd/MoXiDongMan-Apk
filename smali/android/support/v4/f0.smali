.class public final synthetic Landroid/support/v4/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

.field public final synthetic if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f0;->do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    iput-object p2, p0, Landroid/support/v4/f0;->if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/f0;->do:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    iget-object v1, p0, Landroid/support/v4/f0;->if:Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;

    invoke-static {v0, v1, p1, p2}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->for(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;Lcom/wsw/cospa/adapter/AddBookShelfAdapter$GroupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
