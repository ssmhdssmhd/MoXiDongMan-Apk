.class public abstract Landroid/support/v4/extends;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final for:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final new:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final try:Landroid/support/v4/au;


# instance fields
.field public final do:Landroid/support/v4/static;

.field public final if:Landroid/support/v4/ef1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->if:I

    sput v0, Landroid/support/v4/extends;->for:I

    .line 2
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->goto:Ljava/util/UUID;

    sput-object v0, Landroid/support/v4/extends;->new:Ljava/util/UUID;

    .line 3
    new-instance v0, Landroid/support/v4/au;

    new-instance v1, Landroid/support/v4/throws;

    invoke-direct {v1}, Landroid/support/v4/throws;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v4/au;-><init>(Landroid/support/v4/throws;)V

    sput-object v0, Landroid/support/v4/extends;->try:Landroid/support/v4/au;

    const v1, 0x7fffffff

    .line 4
    iput v1, v0, Landroid/support/v4/au;->do:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/static;Landroid/support/v4/ef1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    .line 3
    iput-object p2, p0, Landroid/support/v4/extends;->if:Landroid/support/v4/ef1;

    return-void
.end method

.method public static break(C)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result p0

    return p0
.end method

.method public static catch([CI)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->class([CI)I

    move-result p0

    return p0
.end method

.method public static class([CI)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->const([CI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static const([CI)Ljava/util/UUID;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->final([CI)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static do(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->do(Z)V

    return-void
.end method

.method public static if(ZLjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->if(ZLjava/lang/String;)V

    return-void
.end method

.method public static new([C)Landroid/support/v4/static;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->for([C)Landroid/support/v4/static;

    move-result-object p0

    return-object p0
.end method

.method public static this(II)Landroid/support/v4/finally;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->break(II)Landroid/support/v4/finally;

    move-result-object p0

    return-object p0
.end method

.method public static try(Landroid/support/v4/static;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/catch;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/static;",
            "IIIIII",
            "Ljava/util/List<",
            "Landroid/support/v4/sn0;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/catch;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->try(Landroid/support/v4/static;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public case(Lorg/antlr/v4/runtime/atn/else;)Lorg/antlr/v4/runtime/atn/else;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/extends;->if:Landroid/support/v4/ef1;

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4
    iget-object v2, p0, Landroid/support/v4/extends;->if:Landroid/support/v4/ef1;

    invoke-static {p1, v2, v1}, Lorg/antlr/v4/runtime/atn/else;->goto(Lorg/antlr/v4/runtime/atn/else;Landroid/support/v4/ef1;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public else()Landroid/support/v4/ef1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/extends;->if:Landroid/support/v4/ef1;

    return-object v0
.end method

.method public for()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ATN simulator does not support clearing the DFA."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract goto()V
.end method
