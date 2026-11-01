.class public final synthetic Landroid/support/v4/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/support/v4/n6;->do:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/n6;->do:Z

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/else;->for(ZLretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
