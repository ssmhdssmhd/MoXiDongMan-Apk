.class public final synthetic Landroid/support/v4/fs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/ScopeProvider;


# static fields
.field public static final synthetic do:Landroid/support/v4/fs1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/fs1;

    invoke-direct {v0}, Landroid/support/v4/fs1;-><init>()V

    sput-object v0, Landroid/support/v4/fs1;->do:Landroid/support/v4/fs1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestScope()Lio/reactivex/CompletableSource;
    .locals 1

    invoke-static {}, Landroid/support/v4/np;->v()Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method
