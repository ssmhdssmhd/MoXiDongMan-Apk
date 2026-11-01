.class public final synthetic Landroid/support/v4/k71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/k71;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    iput-object p2, p0, Landroid/support/v4/k71;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/k71;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    iget-object v1, p0, Landroid/support/v4/k71;->if:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->native(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
