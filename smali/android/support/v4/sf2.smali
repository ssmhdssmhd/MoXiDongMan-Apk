.class public final synthetic Landroid/support/v4/sf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sf2;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sf2;->do:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/WebViewActivity;->import(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
