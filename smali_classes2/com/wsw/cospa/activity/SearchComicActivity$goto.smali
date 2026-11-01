.class Lcom/wsw/cospa/activity/SearchComicActivity$goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$goto;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$goto;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->f(Landroid/widget/EditText;)V

    return-void
.end method
