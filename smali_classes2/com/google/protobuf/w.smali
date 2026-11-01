.class final Lcom/google/protobuf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w$if;
    }
.end annotation


# static fields
.field private static final if:Lcom/google/protobuf/MessageInfoFactory;


# instance fields
.field private final do:Lcom/google/protobuf/MessageInfoFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/w$do;

    invoke-direct {v0}, Lcom/google/protobuf/w$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/w;->if:Lcom/google/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/w;->do()Lcom/google/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/w;-><init>(Lcom/google/protobuf/MessageInfoFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/MessageInfoFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageInfoFactory;

    iput-object p1, p0, Lcom/google/protobuf/w;->do:Lcom/google/protobuf/MessageInfoFactory;

    return-void
.end method

.method private static do()Lcom/google/protobuf/MessageInfoFactory;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/w$if;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/protobuf/MessageInfoFactory;

    .line 2
    invoke-static {}, Lcom/google/protobuf/j;->do()Lcom/google/protobuf/j;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/protobuf/w;->if()Lcom/google/protobuf/MessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/protobuf/w$if;-><init>([Lcom/google/protobuf/MessageInfoFactory;)V

    return-object v0
.end method

.method private static for(Lcom/google/protobuf/MessageInfo;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/MessageInfo;->getSyntax()Lcom/google/protobuf/p0;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/p0;->PROTO2:Lcom/google/protobuf/p0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static if()Lcom/google/protobuf/MessageInfoFactory;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.return"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    sget-object v0, Lcom/google/protobuf/w;->if:Lcom/google/protobuf/MessageInfoFactory;

    return-object v0
.end method

.method private static new(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            ")",
            "Lcom/google/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/w;->for(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/k0;->if()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/google/protobuf/t;->if()Lcom/google/protobuf/t;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/protobuf/y0;->f()Lcom/google/protobuf/s1;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/google/protobuf/b;->if()Lcom/google/protobuf/instanceof;

    move-result-object v6

    .line 7
    invoke-static {}, Lcom/google/protobuf/c0;->if()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/e0;->protected(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/t;Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/e0;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/k0;->if()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/google/protobuf/t;->if()Lcom/google/protobuf/t;

    move-result-object v3

    .line 11
    invoke-static {}, Lcom/google/protobuf/y0;->f()Lcom/google/protobuf/s1;

    move-result-object v4

    const/4 v5, 0x0

    .line 12
    invoke-static {}, Lcom/google/protobuf/c0;->if()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/e0;->protected(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/t;Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/e0;

    move-result-object p0

    :goto_0
    return-object p0

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/w;->for(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/google/protobuf/k0;->do()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 16
    invoke-static {}, Lcom/google/protobuf/t;->do()Lcom/google/protobuf/t;

    move-result-object v4

    .line 17
    invoke-static {}, Lcom/google/protobuf/y0;->implements()Lcom/google/protobuf/s1;

    move-result-object v5

    .line 18
    invoke-static {}, Lcom/google/protobuf/b;->do()Lcom/google/protobuf/instanceof;

    move-result-object v6

    .line 19
    invoke-static {}, Lcom/google/protobuf/c0;->do()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/e0;->protected(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/t;Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/e0;

    move-result-object p0

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {}, Lcom/google/protobuf/k0;->do()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 22
    invoke-static {}, Lcom/google/protobuf/t;->do()Lcom/google/protobuf/t;

    move-result-object v3

    .line 23
    invoke-static {}, Lcom/google/protobuf/y0;->instanceof()Lcom/google/protobuf/s1;

    move-result-object v4

    const/4 v5, 0x0

    .line 24
    invoke-static {}, Lcom/google/protobuf/c0;->do()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 25
    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/e0;->protected(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/t;Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/e0;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/y0;->synchronized(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/w;->do:Lcom/google/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/protobuf/y0;->f()Lcom/google/protobuf/s1;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/protobuf/b;->if()Lcom/google/protobuf/instanceof;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Lcom/google/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 8
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/f0;->for(Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/f0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/protobuf/y0;->implements()Lcom/google/protobuf/s1;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/protobuf/b;->do()Lcom/google/protobuf/instanceof;

    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 12
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/f0;->for(Lcom/google/protobuf/s1;Lcom/google/protobuf/instanceof;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/f0;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-static {p1, v0}, Lcom/google/protobuf/w;->new(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method
