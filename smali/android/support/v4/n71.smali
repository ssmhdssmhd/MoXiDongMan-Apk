.class public final synthetic Landroid/support/v4/n71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/n71;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    iput-object p2, p0, Landroid/support/v4/n71;->if:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/n71;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/n71;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    iget-object v1, p0, Landroid/support/v4/n71;->if:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/n71;->for:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->static(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
