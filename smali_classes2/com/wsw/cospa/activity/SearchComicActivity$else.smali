.class Lcom/wsw/cospa/activity/SearchComicActivity$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/view/SearchEditText$onClearTextListener;


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
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$else;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearText()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$else;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/model/SearchComicModel;->transient()V

    return-void
.end method
