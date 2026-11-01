.class public abstract Lorg/chromium/net/else$do;
.super Lorg/chromium/net/return$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# static fields
.field public static final case:I = 0x0

.field public static final else:I = 0x1

.field public static final goto:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/return$do;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract break()Lorg/chromium/net/else$do;
.end method

.method public bridge synthetic case(I)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/else$do;->throw(I)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method

.method public abstract catch()Lorg/chromium/net/else;
.end method

.method public abstract class()Lorg/chromium/net/else$do;
.end method

.method public const()Lorg/chromium/net/else$do;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic do(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/else$do;->goto(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/else$do;->public(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method

.method public abstract final(Ljava/lang/String;)Lorg/chromium/net/else$do;
.end method

.method public bridge synthetic for()Lorg/chromium/net/return;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/else$do;->catch()Lorg/chromium/net/else;

    move-result-object v0

    return-object v0
.end method

.method public abstract goto(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/else$do;
.end method

.method public bridge synthetic if()Lorg/chromium/net/return$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/else$do;->break()Lorg/chromium/net/else$do;

    move-result-object v0

    return-object v0
.end method

.method public import(I)Lorg/chromium/net/else$do;
    .locals 0

    return-object p0
.end method

.method public native(I)Lorg/chromium/net/else$do;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic new()Lorg/chromium/net/return$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/else$do;->class()Lorg/chromium/net/else$do;

    move-result-object v0

    return-object v0
.end method

.method public abstract public(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;
.end method

.method public super(I)Lorg/chromium/net/else$do;
    .locals 0

    return-object p0
.end method

.method public this(Ljava/lang/Object;)Lorg/chromium/net/else$do;
    .locals 0

    return-object p0
.end method

.method public abstract throw(I)Lorg/chromium/net/else$do;
.end method

.method public bridge synthetic try(Ljava/lang/String;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/else$do;->final(Ljava/lang/String;)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method

.method public while(Lorg/chromium/net/native$do;)Lorg/chromium/net/else$do;
    .locals 0

    return-object p0
.end method
