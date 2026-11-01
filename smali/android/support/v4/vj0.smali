.class public final synthetic Landroid/support/v4/vj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/vj0;->do:Lcom/wsw/cospa/activity/HomeActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vj0;->do:Lcom/wsw/cospa/activity/HomeActivity;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->default(Lcom/wsw/cospa/activity/HomeActivity;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
