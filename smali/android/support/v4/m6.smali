.class public final synthetic Landroid/support/v4/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/HomeActivity;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/m6;->do:Lcom/wsw/cospa/activity/HomeActivity;

    iput-boolean p2, p0, Landroid/support/v4/m6;->if:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/m6;->do:Lcom/wsw/cospa/activity/HomeActivity;

    iget-boolean v1, p0, Landroid/support/v4/m6;->if:Z

    check-cast p1, Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/utils/else;->if(Lcom/wsw/cospa/activity/HomeActivity;ZLcom/wsw/cospa/bean/AppUpdateInfo;)V

    return-void
.end method
