.class Lcom/wsw/cospa/activity/SourceDebugActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/model/Debug$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SourceDebugActivity;->private(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SourceDebugActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SourceDebugActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity$if;->do:Lcom/wsw/cospa/activity/SourceDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public printError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity$if;->do:Lcom/wsw/cospa/activity/SourceDebugActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->switch(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/String;)V

    return-void
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity$if;->do:Lcom/wsw/cospa/activity/SourceDebugActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->switch(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/String;)V

    return-void
.end method
