.class public final synthetic Landroid/support/v4/ct1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/SearchComicListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/SearchComicListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ct1;->do:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ct1;->do:Lcom/wsw/cospa/adapter/SearchComicListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
