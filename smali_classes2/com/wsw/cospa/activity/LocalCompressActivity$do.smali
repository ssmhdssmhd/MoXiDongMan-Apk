.class Lcom/wsw/cospa/activity/LocalCompressActivity$do;
.super Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/LocalCompressActivity;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalCompressActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$do;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
