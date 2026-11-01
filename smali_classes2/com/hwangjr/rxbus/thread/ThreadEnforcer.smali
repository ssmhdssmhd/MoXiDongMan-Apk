.class public interface abstract Lcom/hwangjr/rxbus/thread/ThreadEnforcer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANY:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

.field public static final MAIN:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hwangjr/rxbus/thread/ThreadEnforcer$1;

    invoke-direct {v0}, Lcom/hwangjr/rxbus/thread/ThreadEnforcer$1;-><init>()V

    sput-object v0, Lcom/hwangjr/rxbus/thread/ThreadEnforcer;->ANY:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    .line 2
    new-instance v0, Lcom/hwangjr/rxbus/thread/ThreadEnforcer$2;

    invoke-direct {v0}, Lcom/hwangjr/rxbus/thread/ThreadEnforcer$2;-><init>()V

    sput-object v0, Lcom/hwangjr/rxbus/thread/ThreadEnforcer;->MAIN:Lcom/hwangjr/rxbus/thread/ThreadEnforcer;

    return-void
.end method


# virtual methods
.method public abstract enforce(Lcom/hwangjr/rxbus/Bus;)V
.end method
