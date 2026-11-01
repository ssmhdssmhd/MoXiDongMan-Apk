.class Lcom/wsw/cospa/fragment/BookShelfFragment$new;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/BookShelfFragment;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$new;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method
