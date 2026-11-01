.class Lcom/wsw/cospa/activity/SearchComicActivity$if;
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
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$if;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$if;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->class()V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$if;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/model/SearchComicModel;->transient()V

    return-void
.end method
