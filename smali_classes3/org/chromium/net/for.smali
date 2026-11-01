.class public abstract Lorg/chromium/net/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/for$do;
    }
.end annotation


# static fields
.field private static final do:Ljava/lang/String; = "for"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/net/for;->do:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract case(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract else()V
.end method

.method public abstract for()[B
.end method

.method public abstract goto(Ljava/lang/String;Z)V
.end method

.method public abstract if()Ljava/net/URLStreamHandlerFactory;
.end method

.method public abstract new()Ljava/lang/String;
.end method

.method public abstract this()V
.end method

.method public abstract try(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/return$do;
.end method
