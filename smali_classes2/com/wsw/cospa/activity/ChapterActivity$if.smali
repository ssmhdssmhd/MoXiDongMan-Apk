.class Lcom/wsw/cospa/activity/ChapterActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/ChapterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ChapterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$if;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$if;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/ChapterActivity;->throws(Lcom/wsw/cospa/activity/ChapterActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity$if;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ChapterActivity;->throws(Lcom/wsw/cospa/activity/ChapterActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
