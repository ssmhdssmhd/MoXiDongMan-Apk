.class public final synthetic Landroid/support/v4/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/x2;->do:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x2;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/do;->do(Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
