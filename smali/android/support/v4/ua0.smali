.class public final synthetic Landroid/support/v4/ua0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/FileSelectorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ua0;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ua0;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->native(Lcom/wsw/cospa/activity/FileSelectorActivity;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
