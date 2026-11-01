.class Lcom/wsw/cospa/adapter/ChapterGroupAdapter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->if(Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/Switcher;

.field public final synthetic if:Lcom/wsw/cospa/adapter/ChapterGroupAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterGroupAdapter;Lcom/wsw/cospa/bean/Switcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$do;->if:Lcom/wsw/cospa/adapter/ChapterGroupAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$do;->do:Lcom/wsw/cospa/bean/Switcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$do;->do:Lcom/wsw/cospa/bean/Switcher;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Switcher;->switchEnable()V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$do;->if:Lcom/wsw/cospa/adapter/ChapterGroupAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
