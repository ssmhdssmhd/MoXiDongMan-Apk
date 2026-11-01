.class Lcom/wsw/cospa/activity/AddBookShelfActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AddBookShelfActivity;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final synthetic if:Lcom/wsw/cospa/activity/AddBookShelfActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$if;->if:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$if;->do:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragFinish()V
    .locals 0

    return-void
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$if;->do:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
