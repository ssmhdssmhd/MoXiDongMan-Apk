.class public Lfreemarker/template/do;
.super Lfreemarker/core/t;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lfreemarker/core/ParserConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/do$if;,
        Lfreemarker/template/do$for;
    }
.end annotation


# static fields
.field private static final A1:Lfreemarker/log/if;

.field public static final A2:Ljava/lang/String; = "template_loader"

.field private static final A3:Ljava/lang/String; = "freemarker.core._2_4_OrLaterMarker"

.field private static final B1:Ljava/lang/String; = "/freemarker/version.properties"

.field public static final B2:Ljava/lang/String; = "template_lookup_strategy"

.field private static final B3:Z

.field public static final C1:Ljava/lang/String; = "default_encoding"

.field public static final C2:Ljava/lang/String; = "templateLookupStrategy"

.field private static final C3:Ljava/lang/Object;

.field public static final D1:Ljava/lang/String; = "defaultEncoding"

.field public static final D2:Ljava/lang/String; = "template_lookup_strategy"

.field private static volatile D3:Lfreemarker/template/do; = null

.field public static final E1:Ljava/lang/String; = "default_encoding"

.field public static final E2:Ljava/lang/String; = "template_name_format"

.field public static final F1:Ljava/lang/String; = "localized_lookup"

.field public static final F2:Ljava/lang/String; = "templateNameFormat"

.field public static final G1:Ljava/lang/String; = "localizedLookup"

.field public static final G2:Ljava/lang/String; = "template_name_format"

.field public static final H1:Ljava/lang/String; = "localized_lookup"

.field public static final H2:Ljava/lang/String; = "template_configurations"

.field public static final I1:Ljava/lang/String; = "strict_syntax"

.field public static final I2:Ljava/lang/String; = "templateConfigurations"

.field public static final J1:Ljava/lang/String; = "strictSyntax"

.field public static final J2:Ljava/lang/String; = "template_configurations"

.field public static final K1:Ljava/lang/String; = "strict_syntax"

.field public static final K2:Ljava/lang/String; = "incompatible_improvements"

.field public static final L1:Ljava/lang/String; = "whitespace_stripping"

.field public static final L2:Ljava/lang/String; = "incompatibleImprovements"

.field public static final M1:Ljava/lang/String; = "whitespaceStripping"

.field public static final M2:Ljava/lang/String; = "incompatible_improvements"

.field public static final N1:Ljava/lang/String; = "whitespace_stripping"

.field public static final N2:Ljava/lang/String; = "incompatible_improvements"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final O1:Ljava/lang/String; = "output_format"

.field public static final O2:Ljava/lang/String; = "incompatible_enhancements"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final P1:Ljava/lang/String; = "outputFormat"

.field public static final P2:Ljava/lang/String; = "fallback_on_null_loop_variable"

.field public static final Q1:Ljava/lang/String; = "output_format"

.field public static final Q2:Ljava/lang/String; = "fallbackOnNullLoopVariable"

.field public static final R1:Ljava/lang/String; = "recognize_standard_file_extensions"

.field public static final R2:Ljava/lang/String; = "fallback_on_null_loop_variable"

.field public static final S1:Ljava/lang/String; = "recognizeStandardFileExtensions"

.field private static final S2:[Ljava/lang/String;

.field public static final T1:Ljava/lang/String; = "recognize_standard_file_extensions"

.field private static final T2:[Ljava/lang/String;

.field public static final U1:Ljava/lang/String; = "registered_custom_output_formats"

.field private static final U2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/e91;",
            ">;"
        }
    .end annotation
.end field

.field public static final V1:Ljava/lang/String; = "registeredCustomOutputFormats"

.field public static final V2:I = 0x0

.field public static final W1:Ljava/lang/String; = "registered_custom_output_formats"

.field public static final W2:I = 0x1

.field public static final X1:Ljava/lang/String; = "auto_escaping_policy"

.field public static final X2:I = 0x2

.field public static final Y1:Ljava/lang/String; = "autoEscapingPolicy"

.field public static final Y2:I = 0x14

.field public static final Z1:Ljava/lang/String; = "auto_escaping_policy"

.field public static final Z2:I = 0x15

.field public static final a2:Ljava/lang/String; = "cache_storage"

.field public static final a3:I = 0x16

.field public static final b2:Ljava/lang/String; = "cacheStorage"

.field public static final b3:I = 0xa

.field public static final c2:Ljava/lang/String; = "cache_storage"

.field public static final c3:I = 0xb

.field public static final d2:Ljava/lang/String; = "template_update_delay"

.field public static final d3:I = 0xc

.field public static final e2:Ljava/lang/String; = "templateUpdateDelay"

.field public static final e3:I = 0x14

.field public static final f2:Ljava/lang/String; = "template_update_delay"

.field public static final f3:I = 0x15

.field public static final g2:Ljava/lang/String; = "auto_import"

.field public static final g3:I = 0x16

.field public static final h2:Ljava/lang/String; = "autoImport"

.field public static final h3:Landroid/support/v4/we2;

.field public static final i2:Ljava/lang/String; = "auto_import"

.field public static final i3:Landroid/support/v4/we2;

.field public static final j2:Ljava/lang/String; = "auto_include"

.field public static final j3:Landroid/support/v4/we2;

.field public static final k2:Ljava/lang/String; = "autoInclude"

.field public static final k3:Landroid/support/v4/we2;

.field public static final l2:Ljava/lang/String; = "auto_include"

.field public static final l3:Landroid/support/v4/we2;

.field public static final m2:Ljava/lang/String; = "tag_syntax"

.field public static final m3:Landroid/support/v4/we2;

.field public static final n2:Ljava/lang/String; = "tagSyntax"

.field public static final n3:Landroid/support/v4/we2;

.field public static final o2:Ljava/lang/String; = "tag_syntax"

.field public static final o3:Landroid/support/v4/we2;

.field public static final p2:Ljava/lang/String; = "interpolation_syntax"

.field public static final p3:Landroid/support/v4/we2;

.field public static final q2:Ljava/lang/String; = "interpolationSyntax"

.field public static final q3:Landroid/support/v4/we2;

.field public static final r2:Ljava/lang/String; = "interpolation_syntax"

.field public static final r3:Landroid/support/v4/we2;

.field public static final s2:Ljava/lang/String; = "naming_convention"

.field public static final s3:Landroid/support/v4/we2;

.field public static final t2:Ljava/lang/String; = "namingConvention"

.field public static final t3:Landroid/support/v4/we2;

.field public static final u2:Ljava/lang/String; = "naming_convention"

.field public static final u3:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final v2:Ljava/lang/String; = "tab_size"

.field public static final v3:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final w2:Ljava/lang/String; = "tabSize"

.field private static final w3:Ljava/lang/String; = "null"

.field public static final x2:Ljava/lang/String; = "tab_size"

.field private static final x3:Ljava/lang/String; = "default"

.field public static final y2:Ljava/lang/String; = "template_loader"

.field private static final y3:Ljava/lang/String; = "JVM default"

.field public static final z2:Ljava/lang/String; = "templateLoader"

.field private static final z3:Landroid/support/v4/we2;


# instance fields
.field private U0:Z

.field private volatile V0:Z

.field private W0:Z

.field private X0:I

.field private Y0:Landroid/support/v4/e91;

.field private Z0:Z

.field private a1:Ljava/lang/Boolean;

.field private b1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/support/v4/e91;",
            ">;"
        }
    .end annotation
.end field

.field private c1:Landroid/support/v4/we2;

.field private d1:I

.field private e1:I

.field private f1:I

.field private g1:I

.field private h1:Z

.field private i1:Z

.field private j1:Lfreemarker/cache/import;

.field private k1:Z

.field private l1:Z

.field private m1:Z

.field private n1:Z

.field private o1:Z

.field private p1:Z

.field private q1:Z

.field private r1:Z

.field private s1:Z

.field private t1:Z

.field private u1:Z

.field private v1:Z

.field private w1:Ljava/util/HashMap;

.field private x1:Ljava/util/HashMap;

.field private y1:Ljava/lang/String;

.field private z1:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const-string v0, "freemarker.cache"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/template/do;->A1:Lfreemarker/log/if;

    const-string v1, "auto_escaping_policy"

    const-string v2, "cache_storage"

    const-string v3, "default_encoding"

    const-string v4, "fallback_on_null_loop_variable"

    const-string v5, "incompatible_improvements"

    const-string v6, "interpolation_syntax"

    const-string v7, "localized_lookup"

    const-string v8, "naming_convention"

    const-string v9, "output_format"

    const-string v10, "recognize_standard_file_extensions"

    const-string v11, "registered_custom_output_formats"

    const-string v12, "strict_syntax"

    const-string v13, "tab_size"

    const-string v14, "tag_syntax"

    const-string v15, "template_configurations"

    const-string v16, "template_loader"

    const-string v17, "template_lookup_strategy"

    const-string v18, "template_name_format"

    const-string v19, "template_update_delay"

    const-string v20, "whitespace_stripping"

    .line 2
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/template/do;->S2:[Ljava/lang/String;

    const-string v1, "autoEscapingPolicy"

    const-string v2, "cacheStorage"

    const-string v3, "defaultEncoding"

    const-string v4, "fallbackOnNullLoopVariable"

    const-string v5, "incompatibleImprovements"

    const-string v6, "interpolationSyntax"

    const-string v7, "localizedLookup"

    const-string v8, "namingConvention"

    const-string v9, "outputFormat"

    const-string v10, "recognizeStandardFileExtensions"

    const-string v11, "registeredCustomOutputFormats"

    const-string v12, "strictSyntax"

    const-string v13, "tabSize"

    const-string v14, "tagSyntax"

    const-string v15, "templateConfigurations"

    const-string v16, "templateLoader"

    const-string v17, "templateLookupStrategy"

    const-string v18, "templateNameFormat"

    const-string v19, "templateUpdateDelay"

    const-string v20, "whitespaceStripping"

    .line 3
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/template/do;->T2:[Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/template/do;->U2:Ljava/util/Map;

    .line 5
    sget-object v1, Landroid/support/v4/mb2;->do:Landroid/support/v4/mb2;

    invoke-virtual {v1}, Landroid/support/v4/mb2;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lfreemarker/core/q0;->do:Lfreemarker/core/q0;

    invoke-virtual {v1}, Lfreemarker/core/q0;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lfreemarker/core/u4;->if:Lfreemarker/core/u4;

    invoke-virtual {v1}, Lfreemarker/core/u4;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lfreemarker/core/v4;->do:Lfreemarker/core/v4;

    invoke-virtual {v1}, Lfreemarker/core/v4;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lfreemarker/core/j3;->do:Lfreemarker/core/j3;

    invoke-virtual {v1}, Lfreemarker/core/j3;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Landroid/support/v4/wd1;->do:Landroid/support/v4/wd1;

    invoke-virtual {v1}, Landroid/support/v4/wd1;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Landroid/support/v4/cf;->do:Landroid/support/v4/cf;

    invoke-virtual {v1}, Landroid/support/v4/cf;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Landroid/support/v4/hp0;->do:Landroid/support/v4/hp0;

    invoke-virtual {v1}, Landroid/support/v4/hp0;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Landroid/support/v4/vo0;->do:Landroid/support/v4/vo0;

    invoke-virtual {v1}, Landroid/support/v4/vo0;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Landroid/support/v4/we2;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v0, Lfreemarker/template/do;->h3:Landroid/support/v4/we2;

    .line 15
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x13

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->i3:Landroid/support/v4/we2;

    .line 16
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x14

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->j3:Landroid/support/v4/we2;

    .line 17
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x15

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->k3:Landroid/support/v4/we2;

    .line 18
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x16

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->l3:Landroid/support/v4/we2;

    .line 19
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x17

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->m3:Landroid/support/v4/we2;

    .line 20
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x18

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->n3:Landroid/support/v4/we2;

    .line 21
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x19

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->o3:Landroid/support/v4/we2;

    .line 22
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x1a

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->p3:Landroid/support/v4/we2;

    .line 23
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x1b

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->q3:Landroid/support/v4/we2;

    .line 24
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x1c

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->r3:Landroid/support/v4/we2;

    .line 25
    new-instance v4, Landroid/support/v4/we2;

    const/16 v5, 0x1d

    invoke-direct {v4, v1, v2, v5}, Landroid/support/v4/we2;-><init>(III)V

    sput-object v4, Lfreemarker/template/do;->s3:Landroid/support/v4/we2;

    .line 26
    sput-object v0, Lfreemarker/template/do;->t3:Landroid/support/v4/we2;

    .line 27
    invoke-virtual {v0}, Landroid/support/v4/we2;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfreemarker/template/do;->u3:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/do;->v3:I

    .line 29
    :try_start_0
    const-class v0, Lfreemarker/template/do;

    const-string v1, "/freemarker/version.properties"

    invoke-static {v0, v1}, Lfreemarker/template/utility/if;->throw(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    const-string v1, "version"

    .line 30
    invoke-static {v0, v1}, Lfreemarker/template/do;->H1(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildTimestamp"

    .line 31
    invoke-static {v0, v2}, Lfreemarker/template/do;->H1(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Z"

    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+0000"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 34
    :cond_0
    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    :try_start_2
    const-string v4, "isGAECompliant"

    .line 35
    invoke-static {v0, v4}, Lfreemarker/template/do;->H1(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    new-instance v4, Landroid/support/v4/we2;

    invoke-direct {v4, v1, v0, v2}, Landroid/support/v4/we2;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V

    sput-object v4, Lfreemarker/template/do;->z3:Landroid/support/v4/we2;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v0, "freemarker.core._2_4_OrLaterMarker"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    const/4 v3, 0x1

    .line 38
    :catch_2
    :catchall_0
    sput-boolean v3, Lfreemarker/template/do;->B3:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/template/do;->C3:Ljava/lang/Object;

    return-void

    :catch_3
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load and parse /freemarker/version.properties"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->t3:Landroid/support/v4/we2;

    invoke-direct {p0, v0}, Lfreemarker/template/do;-><init>(Landroid/support/v4/we2;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/core/t;-><init>(Landroid/support/v4/we2;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->U0:Z

    .line 4
    iput-boolean v0, p0, Lfreemarker/template/do;->V0:Z

    .line 5
    iput-boolean v0, p0, Lfreemarker/template/do;->W0:Z

    const/16 v1, 0x15

    .line 6
    iput v1, p0, Lfreemarker/template/do;->X0:I

    .line 7
    sget-object v1, Landroid/support/v4/mb2;->do:Landroid/support/v4/mb2;

    iput-object v1, p0, Lfreemarker/template/do;->Y0:Landroid/support/v4/e91;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/do;->b1:Ljava/util/Map;

    .line 9
    iput v0, p0, Lfreemarker/template/do;->d1:I

    const/16 v1, 0x14

    .line 10
    iput v1, p0, Lfreemarker/template/do;->e1:I

    const/16 v1, 0xa

    .line 11
    iput v1, p0, Lfreemarker/template/do;->f1:I

    const/16 v1, 0x8

    .line 12
    iput v1, p0, Lfreemarker/template/do;->g1:I

    .line 13
    iput-boolean v0, p0, Lfreemarker/template/do;->h1:Z

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lfreemarker/template/do;->x1:Ljava/util/HashMap;

    .line 16
    invoke-static {}, Lfreemarker/template/do;->g1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/do;->y1:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    invoke-static {}, Lfreemarker/template/do;->P0()V

    const-string v0, "incompatibleImprovements"

    .line 19
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Lfreemarker/template/do;->c1:Landroid/support/v4/we2;

    .line 21
    invoke-direct {p0}, Lfreemarker/template/do;->X0()V

    .line 22
    invoke-direct {p0}, Lfreemarker/template/do;->s2()V

    return-void
.end method

.method private static A1()Ljava/lang/String;
    .locals 2

    const-string v0, "file.encoding"

    const-string v1, "utf-8"

    .line 1
    invoke-static {v0, v1}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C1(Ljava/lang/String;)Lfreemarker/core/y1;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/jc2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/template/do;->D1(Ljava/lang/String;)Landroid/support/v4/e91;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/core/y1;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/core/y1;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" output format can\'t be used in ...{...} expression, because it\'s not a markup format."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private C2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static H1(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version file is corrupt: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" property is missing."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static I2(Lfreemarker/template/do;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->C3:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p0, Lfreemarker/template/do;->D3:Lfreemarker/template/do;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static P0()V
    .locals 3

    .line 1
    sget-boolean v0, Lfreemarker/template/do;->B3:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clashing FreeMarker versions ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lfreemarker/template/do;->z3:Landroid/support/v4/we2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and some post-2.3.x) detected: found post-2.3.x class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "freemarker.core._2_4_OrLaterMarker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". You probably have two different freemarker.jar-s in the classpath."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static T0(Landroid/support/v4/we2;)Lfreemarker/cache/CacheStorage;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lfreemarker/template/do;->U0(Landroid/support/v4/we2;Lfreemarker/cache/CacheStorage;)Lfreemarker/cache/CacheStorage;

    move-result-object p0

    return-object p0
.end method

.method public static U0(Landroid/support/v4/we2;Lfreemarker/cache/CacheStorage;)Lfreemarker/cache/CacheStorage;
    .locals 0

    .line 1
    instance-of p0, p1, Lfreemarker/template/do$if;

    if-eqz p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p0, Lfreemarker/template/do$if;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfreemarker/template/do$if;-><init>(Lfreemarker/template/do$do;)V

    return-object p0
.end method

.method public static V0(Landroid/support/v4/we2;)Lfreemarker/cache/TemplateLoader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lfreemarker/template/do;->W0(Landroid/support/v4/we2;Lfreemarker/cache/TemplateLoader;)Lfreemarker/cache/TemplateLoader;

    move-result-object p0

    return-object p0
.end method

.method private static W0(Landroid/support/v4/we2;Lfreemarker/cache/TemplateLoader;)Lfreemarker/cache/TemplateLoader;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result p0

    sget v0, Landroid/support/v4/ul2;->new:I

    const/4 v1, 0x0

    if-ge p0, v0, :cond_1

    .line 2
    instance-of p0, p1, Lfreemarker/template/do$for;

    if-eqz p0, :cond_0

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    new-instance p0, Lfreemarker/template/do$for;

    invoke-direct {p0}, Lfreemarker/template/do$for;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lfreemarker/template/do;->A1:Lfreemarker/log/if;

    const-string v0, "Couldn\'t create legacy default TemplateLoader which accesses the current directory. (Use new Configuration(Configuration.VERSION_2_3_21) or higher to avoid this.)"

    invoke-virtual {p1, v0, p0}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method private X0()V
    .locals 8

    .line 1
    new-instance v7, Lfreemarker/cache/import;

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->p1()Lfreemarker/cache/TemplateLoader;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lfreemarker/template/do;->e1()Lfreemarker/cache/CacheStorage;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Lfreemarker/template/do;->q1()Lfreemarker/cache/switch;

    move-result-object v3

    .line 5
    invoke-direct {p0}, Lfreemarker/template/do;->s1()Lfreemarker/cache/throws;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;Lfreemarker/template/do;)V

    iput-object v7, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 6
    invoke-virtual {v7}, Lfreemarker/cache/import;->new()V

    .line 7
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lfreemarker/cache/import;->package(J)V

    return-void
.end method

.method private Y0(Lfreemarker/core/d0;Lfreemarker/template/static;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/t;->catch()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lfreemarker/core/t;->catch()Ljava/util/Map;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/t;->abstract()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lfreemarker/core/t;->abstract()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/t;->continue()Z

    move-result v1

    .line 5
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/t;->catch()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v1}, Lfreemarker/core/d0;->I2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/d0$this;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_7

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 13
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lfreemarker/core/d0;->I2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/d0$this;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lfreemarker/core/d0;->I2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/d0$this;

    goto :goto_3

    :cond_8
    return-void
.end method

.method private Z0(Lfreemarker/core/d0;Lfreemarker/template/static;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;,
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lfreemarker/core/t;->const()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/t;->const()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->const()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lfreemarker/template/do;->Q1(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/static;

    move-result-object v2

    invoke-virtual {p1, v2}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    :cond_5
    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lfreemarker/template/do;->Q1(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/static;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfreemarker/template/do;->Q1(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private a1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static a2()Landroid/support/v4/we2;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/template/do;->z3:Landroid/support/v4/we2;

    return-object v0
.end method

.method private a3()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->x1:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v3, v1, Lfreemarker/template/TemplateModel;

    if-eqz v3, :cond_1

    .line 7
    check-cast v1, Lfreemarker/template/TemplateModel;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v3

    invoke-interface {v3, v1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 9
    :goto_1
    iget-object v3, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b2()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->z3:Landroid/support/v4/we2;

    invoke-virtual {v0}, Landroid/support/v4/we2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c1()Lfreemarker/template/AttemptExceptionReporter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->d1(Landroid/support/v4/we2;)Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    return-object v0
.end method

.method public static d1(Landroid/support/v4/we2;)Lfreemarker/template/AttemptExceptionReporter;
    .locals 0

    .line 1
    sget-object p0, Lfreemarker/template/AttemptExceptionReporter;->LOG_ERROR_REPORTER:Lfreemarker/template/AttemptExceptionReporter;

    return-object p0
.end method

.method private e1()Lfreemarker/cache/CacheStorage;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/template/do;->b1()Lfreemarker/cache/CacheStorage;

    move-result-object v1

    invoke-static {v0, v1}, Lfreemarker/template/do;->U0(Landroid/support/v4/we2;Lfreemarker/cache/CacheStorage;)Lfreemarker/cache/CacheStorage;

    move-result-object v0

    return-object v0
.end method

.method public static f1()Lfreemarker/template/do;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->D3:Lfreemarker/template/do;

    if-nez v0, :cond_1

    .line 2
    sget-object v1, Lfreemarker/template/do;->C3:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lfreemarker/template/do;->D3:Lfreemarker/template/do;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lfreemarker/template/do;

    invoke-direct {v0}, Lfreemarker/template/do;-><init>()V

    .line 5
    sput-object v0, Lfreemarker/template/do;->D3:Lfreemarker/template/do;

    .line 6
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private f2(Lfreemarker/cache/switch;)Z
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/cache/switch;->do:Lfreemarker/cache/switch;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static g1()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lfreemarker/template/do;->A1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i1()Ljava/util/Locale;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private j1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->k1(Landroid/support/v4/we2;)Z

    move-result v0

    return v0
.end method

.method public static k1(Landroid/support/v4/we2;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private l1()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->m1(Landroid/support/v4/we2;)Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static m1(Landroid/support/v4/we2;)Lfreemarker/template/ObjectWrapper;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->new:I

    if-ge v0, v1, :cond_0

    .line 2
    sget-object p0, Lfreemarker/template/ObjectWrapper;->DEFAULT_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/template/break;

    invoke-direct {v0, p0}, Lfreemarker/template/break;-><init>(Landroid/support/v4/we2;)V

    invoke-virtual {v0}, Lfreemarker/template/break;->strictfp()Lfreemarker/template/this;

    move-result-object p0

    return-object p0
.end method

.method private n1()Lfreemarker/template/TemplateExceptionHandler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->o1(Landroid/support/v4/we2;)Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static o1(Landroid/support/v4/we2;)Lfreemarker/template/TemplateExceptionHandler;
    .locals 0

    .line 1
    sget-object p0, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    return-object p0
.end method

.method private p1()Lfreemarker/cache/TemplateLoader;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/template/do;->W1()Lfreemarker/cache/TemplateLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lfreemarker/template/do;->W0(Landroid/support/v4/we2;Lfreemarker/cache/TemplateLoader;)Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    return-object v0
.end method

.method private q1()Lfreemarker/cache/switch;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->r1(Landroid/support/v4/we2;)Lfreemarker/cache/switch;

    move-result-object v0

    return-object v0
.end method

.method public static r1(Landroid/support/v4/we2;)Lfreemarker/cache/switch;
    .locals 0

    .line 1
    sget-object p0, Lfreemarker/cache/switch;->do:Lfreemarker/cache/switch;

    return-object p0
.end method

.method private s1()Lfreemarker/cache/throws;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->t1(Landroid/support/v4/we2;)Lfreemarker/cache/throws;

    move-result-object v0

    return-object v0
.end method

.method private s2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/do;

    invoke-direct {v1}, Lfreemarker/template/utility/do;-><init>()V

    const-string v2, "capture_output"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    sget-object v1, Lfreemarker/template/utility/final;->new:Lfreemarker/template/utility/final;

    const-string v2, "compress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/else;

    invoke-direct {v1}, Lfreemarker/template/utility/else;-><init>()V

    const-string v2, "html_escape"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/this;

    invoke-direct {v1}, Lfreemarker/template/utility/this;-><init>()V

    const-string v2, "normalize_newlines"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/import;

    invoke-direct {v1}, Lfreemarker/template/utility/import;-><init>()V

    const-string v2, "xml_escape"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static t1(Landroid/support/v4/we2;)Lfreemarker/cache/throws;
    .locals 0

    .line 1
    sget-object p0, Lfreemarker/cache/throws;->do:Lfreemarker/cache/throws;

    return-object p0
.end method

.method private t2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->goto()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 2
    invoke-virtual {v0}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v5

    .line 3
    invoke-virtual {p0}, Lfreemarker/template/do;->V1()Lfreemarker/cache/native;

    move-result-object v6

    move-object v1, p0

    .line 4
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/do;->u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V

    return-void
.end method

.method public static u1()Ljava/util/TimeZone;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 2
    new-instance v8, Lfreemarker/cache/import;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;Lfreemarker/template/do;)V

    iput-object v8, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 3
    invoke-virtual {v8}, Lfreemarker/cache/import;->new()V

    .line 4
    iget-object p1, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->this()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lfreemarker/cache/import;->package(J)V

    .line 5
    iget-object p1, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    iget-boolean p2, p0, Lfreemarker/template/do;->V0:Z

    invoke-virtual {p1, p2}, Lfreemarker/cache/import;->private(Z)V

    return-void
.end method

.method private v1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/do;->w1(Landroid/support/v4/we2;)Z

    move-result v0

    return v0
.end method

.method private v2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static w1(Landroid/support/v4/we2;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/do;->z2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public B0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    const-class v0, Landroid/support/v4/e91;

    :try_start_0
    const-string v1, "TemplateUpdateInterval"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "default_encoding"

    const-string v3, "template_update_delay"

    if-eqz v1, :cond_0

    move-object p1, v3

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "DefaultEncoding"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v2

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_53

    const-string v1, "defaultEncoding"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_20

    :cond_2
    const-string v1, "localized_lookup"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "localizedLookup"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1f

    :cond_3
    const-string v1, "strict_syntax"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "strictSyntax"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1e

    :cond_4
    const-string v1, "whitespace_stripping"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "whitespaceStripping"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1d

    :cond_5
    const-string v1, "auto_escaping_policy"

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v5, 0x14

    const/16 v6, 0x16

    const/16 v7, 0x15

    if-nez v1, :cond_4a

    const-string v1, "autoEscapingPolicy"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_1a

    :cond_6
    const-string v1, "output_format"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, "default"

    if-nez v1, :cond_47

    :try_start_2
    const-string v1, "outputFormat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_18

    :cond_7
    const-string v1, "registered_custom_output_formats"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x2

    if-nez v1, :cond_44

    const-string v1, "registeredCustomOutputFormats"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_16

    :cond_8
    const-string v0, "recognize_standard_file_extensions"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "recognizeStandardFileExtensions"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_15

    :cond_9
    const-string v0, "cache_storage"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "cacheStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_12

    .line 16
    :cond_a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "templateUpdateDelay"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_10

    :cond_b
    const-string v0, "tag_syntax"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "squareBracket"

    const-string v3, "square_bracket"

    const-string v10, "autoDetect"

    const-string v11, "auto_detect"

    if-nez v0, :cond_2e

    :try_start_3
    const-string v0, "tagSyntax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_c

    :cond_c
    const-string v0, "interpolation_syntax"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v9, "legacy"

    if-nez v0, :cond_29

    :try_start_4
    const-string v0, "interpolationSyntax"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_a

    :cond_d
    const-string v0, "naming_convention"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "namingConvention"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_7

    :cond_e
    const-string v0, "tab_size"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "tabSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_6

    :cond_f
    const-string v0, "incompatible_improvements"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "incompatibleImprovements"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string v0, "incompatible_enhancements"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26
    invoke-virtual {p0, p2}, Lfreemarker/template/do;->N2(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_11
    const-string v0, "template_loader"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "templateLoader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_4

    :cond_12
    const-string v0, "template_lookup_strategy"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "templateLookupStrategy"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_3

    :cond_13
    const-string v0, "template_name_format"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "templateNameFormat"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2

    :cond_14
    const-string v0, "template_configurations"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "templateConfigurations"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1

    :cond_15
    const-string v0, "fallback_on_null_loop_variable"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "fallbackOnNullLoopVariable"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 36
    :cond_16
    invoke-static {p2}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->M2(Z)V

    goto/16 :goto_21

    :cond_17
    :goto_1
    const-string v0, "null"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lfreemarker/template/do;->f3(Lfreemarker/cache/native;)V

    goto/16 :goto_21

    .line 39
    :cond_18
    const-class v0, Lfreemarker/cache/native;

    .line 40
    invoke-static {}, Landroid/support/v4/sl2;->if()Landroid/support/v4/sl2;

    move-result-object v1

    .line 41
    invoke-static {p2, v0, v4, v1}, Lfreemarker/core/c5;->catch(Ljava/lang/String;Ljava/lang/Class;ZLandroid/support/v4/sl2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/native;

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->f3(Lfreemarker/cache/native;)V

    goto/16 :goto_21

    .line 42
    :cond_19
    :goto_2
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 43
    invoke-virtual {p0}, Lfreemarker/template/do;->x3()V

    goto/16 :goto_21

    :cond_1a
    const-string v0, "default_2_3_0"

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 45
    sget-object v0, Lfreemarker/cache/throws;->do:Lfreemarker/cache/throws;

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->i3(Lfreemarker/cache/throws;)V

    goto/16 :goto_21

    :cond_1b
    const-string v0, "default_2_4_0"

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 47
    sget-object v0, Lfreemarker/cache/throws;->if:Lfreemarker/cache/throws;

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->i3(Lfreemarker/cache/throws;)V

    goto/16 :goto_21

    .line 48
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 49
    :cond_1d
    :goto_3
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 50
    invoke-virtual {p0}, Lfreemarker/template/do;->w3()V

    goto/16 :goto_21

    .line 51
    :cond_1e
    const-class v0, Lfreemarker/cache/switch;

    .line 52
    invoke-static {}, Landroid/support/v4/sl2;->if()Landroid/support/v4/sl2;

    move-result-object v1

    .line 53
    invoke-static {p2, v0, v4, v1}, Lfreemarker/core/c5;->catch(Ljava/lang/String;Ljava/lang/Class;ZLandroid/support/v4/sl2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/switch;

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->h3(Lfreemarker/cache/switch;)V

    goto/16 :goto_21

    .line 54
    :cond_1f
    :goto_4
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 55
    invoke-virtual {p0}, Lfreemarker/template/do;->v3()V

    goto/16 :goto_21

    .line 56
    :cond_20
    const-class v0, Lfreemarker/cache/TemplateLoader;

    .line 57
    invoke-static {}, Landroid/support/v4/sl2;->if()Landroid/support/v4/sl2;

    move-result-object v1

    .line 58
    invoke-static {p2, v0, v2, v1}, Lfreemarker/core/c5;->catch(Ljava/lang/String;Ljava/lang/Class;ZLandroid/support/v4/sl2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/TemplateLoader;

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->g3(Lfreemarker/cache/TemplateLoader;)V

    goto/16 :goto_21

    .line 59
    :cond_21
    :goto_5
    new-instance v0, Landroid/support/v4/we2;

    invoke-direct {v0, p2}, Landroid/support/v4/we2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->O2(Landroid/support/v4/we2;)V

    goto/16 :goto_21

    .line 60
    :cond_22
    :goto_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->d3(I)V

    goto/16 :goto_21

    .line 61
    :cond_23
    :goto_7
    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_9

    .line 62
    :cond_24
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0xb

    .line 63
    invoke-virtual {p0, v0}, Lfreemarker/template/do;->R2(I)V

    goto/16 :goto_21

    :cond_25
    const-string v0, "camel_case"

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "camelCase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_8

    .line 65
    :cond_26
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    :cond_27
    :goto_8
    const/16 v0, 0xc

    .line 66
    invoke-virtual {p0, v0}, Lfreemarker/template/do;->R2(I)V

    goto/16 :goto_21

    :cond_28
    :goto_9
    const/16 v0, 0xa

    .line 67
    invoke-virtual {p0, v0}, Lfreemarker/template/do;->R2(I)V

    goto/16 :goto_21

    .line 68
    :cond_29
    :goto_a
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 69
    invoke-virtual {p0, v5}, Lfreemarker/template/do;->P2(I)V

    goto/16 :goto_21

    :cond_2a
    const-string v0, "dollar"

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 71
    invoke-virtual {p0, v7}, Lfreemarker/template/do;->P2(I)V

    goto/16 :goto_21

    .line 72
    :cond_2b
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_b

    .line 73
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 74
    :cond_2d
    :goto_b
    invoke-virtual {p0, v6}, Lfreemarker/template/do;->P2(I)V

    goto/16 :goto_21

    .line 75
    :cond_2e
    :goto_c
    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_f

    :cond_2f
    const-string v0, "angle_bracket"

    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "angleBracket"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_e

    .line 77
    :cond_30
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_d

    .line 78
    :cond_31
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 79
    :cond_32
    :goto_d
    invoke-virtual {p0, v9}, Lfreemarker/template/do;->e3(I)V

    goto/16 :goto_21

    .line 80
    :cond_33
    :goto_e
    invoke-virtual {p0, v2}, Lfreemarker/template/do;->e3(I)V

    goto/16 :goto_21

    .line 81
    :cond_34
    :goto_f
    invoke-virtual {p0, v4}, Lfreemarker/template/do;->e3(I)V

    goto/16 :goto_21

    :cond_35
    :goto_10
    const-string v0, "ms"

    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_36

    const-wide/16 v5, 0x1

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/do;->C2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_36
    const-string v0, "s"

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/do;->C2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_37
    const-string v0, "m"

    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-wide/32 v5, 0xea60

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/do;->C2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_38
    const-string v0, "h"

    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-wide/32 v5, 0x36ee80

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/do;->C2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_39
    move-object v0, p2

    .line 90
    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v5

    invoke-virtual {p0, v0, v1}, Lfreemarker/template/do;->k3(J)V

    goto/16 :goto_21

    .line 91
    :cond_3a
    :goto_12
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 92
    invoke-virtual {p0}, Lfreemarker/template/do;->n3()V

    :cond_3b
    const/16 v0, 0x2e

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_41

    const v0, 0x7fffffff

    .line 94
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {p2, v0}, Lfreemarker/template/utility/super;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 100
    :try_start_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string v6, "soft"

    .line 101
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    move v1, v3

    goto :goto_13

    :cond_3c
    const-string v2, "strong"

    .line 102
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move v2, v3

    goto :goto_13

    .line 103
    :cond_3d
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 104
    :catch_0
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    :cond_3e
    if-nez v1, :cond_40

    if-eqz v2, :cond_3f

    goto :goto_14

    .line 105
    :cond_3f
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 106
    :cond_40
    :goto_14
    new-instance v0, Lfreemarker/cache/break;

    invoke-direct {v0, v2, v1}, Lfreemarker/cache/break;-><init>(II)V

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->F2(Lfreemarker/cache/CacheStorage;)V

    goto/16 :goto_21

    .line 107
    :cond_41
    const-class v0, Lfreemarker/cache/CacheStorage;

    .line 108
    invoke-static {}, Landroid/support/v4/sl2;->if()Landroid/support/v4/sl2;

    move-result-object v1

    .line 109
    invoke-static {p2, v0, v4, v1}, Lfreemarker/core/c5;->catch(Ljava/lang/String;Ljava/lang/Class;ZLandroid/support/v4/sl2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/CacheStorage;

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->F2(Lfreemarker/cache/CacheStorage;)V

    goto/16 :goto_21

    .line 110
    :cond_42
    :goto_15
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 111
    invoke-virtual {p0}, Lfreemarker/template/do;->t3()V

    goto/16 :goto_21

    .line 112
    :cond_43
    invoke-static {p2}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->U2(Z)V

    goto/16 :goto_21

    .line 113
    :cond_44
    :goto_16
    const-class v1, Ljava/util/List;

    .line 114
    invoke-static {}, Landroid/support/v4/sl2;->if()Landroid/support/v4/sl2;

    move-result-object v3

    .line 115
    invoke-static {p2, v1, v2, v3}, Lfreemarker/core/c5;->catch(Ljava/lang/String;Ljava/lang/Class;ZLandroid/support/v4/sl2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 117
    instance-of v5, v5, Landroid/support/v4/e91;

    if-eqz v5, :cond_45

    goto :goto_17

    .line 118
    :cond_45
    new-instance v1, Landroid/support/v4/nl2;

    invoke-virtual {p0}, Lfreemarker/core/t;->package()Lfreemarker/core/d0;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Invalid value for setting "

    aput-object v6, v5, v4

    new-instance v4, Landroid/support/v4/fl2;

    invoke-direct {v4, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": List items must be "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instances, in: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x3

    aput-object p2, v5, v0

    invoke-direct {v1, v3, v5}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v1

    .line 120
    :cond_46
    invoke-virtual {p0, v1}, Lfreemarker/template/do;->V2(Ljava/util/Collection;)V

    goto/16 :goto_21

    .line 121
    :cond_47
    :goto_18
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 122
    invoke-virtual {p0}, Lfreemarker/template/do;->s3()V

    goto/16 :goto_21

    .line 123
    :cond_48
    sget-object v1, Lfreemarker/template/do;->U2:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/e91;

    if-eqz v1, :cond_49

    goto :goto_19

    .line 124
    :cond_49
    invoke-static {}, Landroid/support/v4/sl2;->if()Landroid/support/v4/sl2;

    move-result-object v1

    .line 125
    invoke-static {p2, v0, v2, v1}, Lfreemarker/core/c5;->catch(Ljava/lang/String;Ljava/lang/Class;ZLandroid/support/v4/sl2;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/e91;

    .line 126
    :goto_19
    invoke-virtual {p0, v1}, Lfreemarker/template/do;->S2(Landroid/support/v4/e91;)V

    goto/16 :goto_21

    :cond_4a
    :goto_1a
    const-string v0, "enable_if_default"

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "enableIfDefault"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_1c

    :cond_4b
    const-string v0, "enable_if_supported"

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "enableIfSupported"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_1b

    :cond_4c
    const-string v0, "disable"

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 130
    invoke-virtual {p0, v5}, Lfreemarker/template/do;->E2(I)V

    goto :goto_21

    .line 131
    :cond_4d
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/t;->p(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 132
    :cond_4e
    :goto_1b
    invoke-virtual {p0, v6}, Lfreemarker/template/do;->E2(I)V

    goto :goto_21

    .line 133
    :cond_4f
    :goto_1c
    invoke-virtual {p0, v7}, Lfreemarker/template/do;->E2(I)V

    goto :goto_21

    .line 134
    :cond_50
    :goto_1d
    invoke-static {p2}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->l3(Z)V

    goto :goto_21

    .line 135
    :cond_51
    :goto_1e
    invoke-static {p2}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->c3(Z)V

    goto :goto_21

    .line 136
    :cond_52
    :goto_1f
    invoke-static {p2}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->Q2(Z)V

    goto :goto_21

    :cond_53
    :goto_20
    const-string v0, "JVM default"

    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 138
    invoke-static {}, Lfreemarker/template/do;->A1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->J2(Ljava/lang/String;)V

    goto :goto_21

    .line 139
    :cond_54
    invoke-virtual {p0, p2}, Lfreemarker/template/do;->J2(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_21
    const/4 v2, 0x0

    :cond_55
    if-eqz v2, :cond_56

    .line 140
    invoke-super {p0, p1, p2}, Lfreemarker/core/t;->B0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    return-void

    :catch_1
    move-exception v0

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/t;->M0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lfreemarker/template/TemplateException;

    move-result-object p1

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method public B1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->class()Z

    move-result v0

    return v0
.end method

.method public B2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/do;->z2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public D1(Ljava/lang/String;)Landroid/support/v4/e91;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/jc2;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/16 v0, 0x7b

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 4
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfreemarker/template/do;->C1(Ljava/lang/String;)Lfreemarker/core/y1;

    move-result-object v2

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/template/do;->C1(Ljava/lang/String;)Lfreemarker/core/y1;

    move-result-object v0

    .line 7
    new-instance v1, Lfreemarker/core/n;

    invoke-direct {v1, p1, v2, v0}, Lfreemarker/core/n;-><init>(Ljava/lang/String;Lfreemarker/core/y1;Lfreemarker/core/y1;)V

    return-object v1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing opening \'{\' in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    iget-object v0, p0, Lfreemarker/template/do;->b1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e91;

    if-eqz v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    sget-object v0, Lfreemarker/template/do;->U2:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/e91;

    if-nez v2, :cond_5

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistered output format name, "

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". The output formats registered in the Configuration are: "

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v0, p0, Lfreemarker/template/do;->b1:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string v4, ", "

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_1
    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_4
    new-instance p1, Landroid/support/v4/jc2;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/jc2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v2

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "0-length format name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public D2(Lfreemarker/template/TemplateHashModelEx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->values()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    .line 3
    :goto_0
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    check-cast v1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lfreemarker/template/do;->X2(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E1()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    return v0
.end method

.method public E2(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->public(I)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/template/do;->getAutoEscapingPolicy()I

    move-result v0

    .line 3
    iput p1, p0, Lfreemarker/template/do;->X0:I

    if-eq v0, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lfreemarker/template/do;->S0()V

    :cond_0
    return-void
.end method

.method public F1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->i1:Z

    return v0
.end method

.method public F2(Lfreemarker/cache/CacheStorage;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/template/do;->b1()Lfreemarker/cache/CacheStorage;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 4
    invoke-virtual {v0}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v5

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 5
    invoke-virtual {v0}, Lfreemarker/cache/import;->super()Lfreemarker/cache/native;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    .line 6
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/do;->u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lfreemarker/template/do;->n1:Z

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public G0(Lfreemarker/template/TemplateExceptionHandler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/do;->p1:Z

    return-void
.end method

.method public G1()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Landroid/support/v4/e91;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->b1:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public G2(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/cache/for;

    invoke-direct {v0, p1, p2}, Lfreemarker/cache/for;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->g3(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public H2(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/cache/for;

    invoke-direct {v0, p1, p2}, Lfreemarker/cache/for;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->g3(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public I0(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->I0(Ljava/util/TimeZone;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/do;->v1:Z

    return-void
.end method

.method public I1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public J1()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public J2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/do;->y1:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/do;->u1:Z

    return-void
.end method

.method public K1()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getNamingConvention()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->L1(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public K2(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->W1()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/cache/else;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/cache/else;

    iget-object v0, v0, Lfreemarker/cache/else;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lfreemarker/cache/else;

    invoke-direct {v0, p1}, Lfreemarker/cache/else;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->g3(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public L0(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->L0(Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/do;->s1:Z

    return-void
.end method

.method public L1(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/y4;->if:Ljava/util/Set;

    return-object p1

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lfreemarker/core/y4;->for:Ljava/util/Set;

    return-object p1

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 3
    sget-object p1, Lfreemarker/core/y4;->new:Ljava/util/Set;

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported naming convention constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L2(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public M1()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getNamingConvention()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->N1(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public M2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/do;->h1:Z

    return-void
.end method

.method public N1(I)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lfreemarker/core/y4;->catch(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public N2(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/we2;

    invoke-direct {v0, p1}, Landroid/support/v4/we2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->O2(Landroid/support/v4/we2;)V

    return-void
.end method

.method public O1(Ljava/lang/String;)Lfreemarker/template/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public O2(Landroid/support/v4/we2;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->if(Landroid/support/v4/we2;)V

    .line 2
    iget-object v0, p0, Lfreemarker/template/do;->c1:Landroid/support/v4/we2;

    invoke-virtual {v0, p1}, Landroid/support/v4/we2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3
    iput-object p1, p0, Lfreemarker/template/do;->c1:Landroid/support/v4/we2;

    .line 4
    iget-boolean p1, p0, Lfreemarker/template/do;->k1:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 5
    iput-boolean v0, p0, Lfreemarker/template/do;->k1:Z

    .line 6
    invoke-virtual {p0}, Lfreemarker/template/do;->v3()V

    .line 7
    :cond_0
    iget-boolean p1, p0, Lfreemarker/template/do;->l1:Z

    if-nez p1, :cond_1

    .line 8
    iput-boolean v0, p0, Lfreemarker/template/do;->l1:Z

    .line 9
    invoke-virtual {p0}, Lfreemarker/template/do;->w3()V

    .line 10
    :cond_1
    iget-boolean p1, p0, Lfreemarker/template/do;->m1:Z

    if-nez p1, :cond_2

    .line 11
    iput-boolean v0, p0, Lfreemarker/template/do;->m1:Z

    .line 12
    invoke-virtual {p0}, Lfreemarker/template/do;->x3()V

    .line 13
    :cond_2
    iget-boolean p1, p0, Lfreemarker/template/do;->n1:Z

    if-nez p1, :cond_3

    .line 14
    iput-boolean v0, p0, Lfreemarker/template/do;->n1:Z

    .line 15
    invoke-virtual {p0}, Lfreemarker/template/do;->n3()V

    .line 16
    :cond_3
    iget-boolean p1, p0, Lfreemarker/template/do;->p1:Z

    if-nez p1, :cond_4

    .line 17
    iput-boolean v0, p0, Lfreemarker/template/do;->p1:Z

    .line 18
    invoke-virtual {p0}, Lfreemarker/template/do;->u3()V

    .line 19
    :cond_4
    iget-boolean p1, p0, Lfreemarker/template/do;->q1:Z

    if-nez p1, :cond_5

    .line 20
    iput-boolean v0, p0, Lfreemarker/template/do;->q1:Z

    .line 21
    invoke-virtual {p0}, Lfreemarker/template/do;->m3()V

    .line 22
    :cond_5
    iget-boolean p1, p0, Lfreemarker/template/do;->r1:Z

    if-nez p1, :cond_6

    .line 23
    iput-boolean v0, p0, Lfreemarker/template/do;->r1:Z

    .line 24
    invoke-virtual {p0}, Lfreemarker/template/do;->q3()V

    .line 25
    :cond_6
    iget-boolean p1, p0, Lfreemarker/template/do;->s1:Z

    if-nez p1, :cond_7

    .line 26
    iput-boolean v0, p0, Lfreemarker/template/do;->s1:Z

    .line 27
    invoke-virtual {p0}, Lfreemarker/template/do;->z3()V

    .line 28
    :cond_7
    iget-boolean p1, p0, Lfreemarker/template/do;->o1:Z

    if-nez p1, :cond_8

    .line 29
    iput-boolean v0, p0, Lfreemarker/template/do;->o1:Z

    .line 30
    invoke-virtual {p0}, Lfreemarker/template/do;->r3()V

    .line 31
    :cond_8
    invoke-direct {p0}, Lfreemarker/template/do;->t2()V

    :cond_9
    return-void
.end method

.method public P1(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public P2(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->static(I)V

    .line 2
    iput p1, p0, Lfreemarker/template/do;->e1:I

    return-void
.end method

.method public Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public Q1(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public Q2(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/do;->V0:Z

    .line 2
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0, p1}, Lfreemarker/cache/import;->private(Z)V

    return-void
.end method

.method public R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->s2()V

    return-void
.end method

.method public R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    move-object v2, p2

    if-nez p4, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Lfreemarker/template/do;->x1(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    move-object v4, p4

    .line 3
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/import;->const(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/cache/import$for;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lfreemarker/cache/import$for;->for()Lfreemarker/template/static;

    move-result-object p4

    if-nez p4, :cond_b

    if-eqz p6, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lfreemarker/template/do;->W1()Lfreemarker/cache/TemplateLoader;

    move-result-object p4

    if-nez p4, :cond_3

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Don\'t know where to load template "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " from because the \"template_loader\" FreeMarker setting wasn\'t set (Configuration.setTemplateLoader), so it\'s null."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_5

    .line 7
    :cond_3
    invoke-virtual {p2}, Lfreemarker/cache/import$for;->do()Ljava/lang/String;

    move-result-object p5

    .line 8
    invoke-virtual {p2}, Lfreemarker/cache/import$for;->if()Ljava/lang/String;

    move-result-object p6

    .line 9
    invoke-virtual {p0}, Lfreemarker/template/do;->X1()Lfreemarker/cache/switch;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Template not found for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p5, :cond_4

    if-eqz p1, :cond_4

    .line 11
    invoke-direct {p0, p1}, Lfreemarker/template/do;->v2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (normalized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p5}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_4
    move-object p5, v2

    :goto_0
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " and custom lookup condition "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p3}, Lfreemarker/template/utility/super;->instanceof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_5
    move-object p5, v2

    :goto_1
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nReason given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p0, p6}, Lfreemarker/template/do;->a1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nThe name was interpreted by this TemplateLoader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p4}, Lfreemarker/template/utility/super;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p0, v0}, Lfreemarker/template/do;->f2(Lfreemarker/cache/switch;)Z

    move-result p4

    if-nez p4, :cond_7

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\n(Before that, the name was possibly changed by this lookup strategy: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {v0}, Lfreemarker/template/utility/super;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".)"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_7
    move-object p4, v2

    :goto_3
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lfreemarker/template/do;->k1:Z

    if-nez p4, :cond_8

    const-string p4, "\nWarning: The \"template_loader\" FreeMarker setting wasn\'t set (Configuration.setTemplateLoader), and using the default value is most certainly not intended and dangerous, and can be the cause of this error."

    goto :goto_4

    :cond_8
    move-object p4, v2

    :goto_4
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_9

    const/16 p4, 0x5c

    .line 18
    invoke-virtual {p1, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_9

    const-string v2, "\nWarning: The name contains backslash (\"\\\") instead of slash (\"/\"); template names should use slash only."

    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 19
    :goto_5
    invoke-virtual {p2}, Lfreemarker/cache/import$for;->do()Ljava/lang/String;

    move-result-object p2

    .line 20
    new-instance p5, Landroid/support/v4/m52;

    if-eqz p2, :cond_a

    move-object p1, p2

    :cond_a
    invoke-direct {p5, p1, p3, p4}, Landroid/support/v4/m52;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p5

    :cond_b
    return-object p4
.end method

.method public R2(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->return(I)V

    .line 2
    iput p1, p0, Lfreemarker/template/do;->f1:I

    return-void
.end method

.method public S0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->new()V

    return-void
.end method

.method public S1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Lfreemarker/template/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public S2(Landroid/support/v4/e91;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v0

    .line 2
    iput-object p1, p0, Lfreemarker/template/do;->Y0:Landroid/support/v4/e91;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lfreemarker/template/do;->Z0:Z

    if-eq v0, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lfreemarker/template/do;->S0()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/w41;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You may meant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/support/v4/mb2;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputFormat"

    invoke-direct {p1, v1, v0}, Landroid/support/v4/w41;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public T1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)Lfreemarker/template/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public T2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/do;->i1:Z

    return-void
.end method

.method public U1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;ZZ)Lfreemarker/template/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/m52;,
            Landroid/support/v4/fx0;,
            Lfreemarker/core/h3;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public U2(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/do;->getRecognizeStandardFileExtensions()Z

    move-result v0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/do;->a1:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lfreemarker/template/do;->S0()V

    :cond_0
    return-void
.end method

.method public V1()Lfreemarker/cache/native;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lfreemarker/cache/import;->super()Lfreemarker/cache/native;

    move-result-object v0

    return-object v0
.end method

.method public V2(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/support/v4/e91;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/e91;

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/e91;->if()Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v3, Landroid/support/v4/mb2;->do:Landroid/support/v4/mb2;

    invoke-virtual {v3}, Landroid/support/v4/mb2;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "\" output format can\'t be redefined"

    const-string v5, "The \""

    if-nez v3, :cond_8

    .line 7
    sget-object v3, Landroid/support/v4/wd1;->do:Landroid/support/v4/wd1;

    invoke-virtual {v3}, Landroid/support/v4/wd1;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x2b

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    const/16 v3, 0x7b

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    const/16 v3, 0x7d

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 13
    invoke-virtual {v1}, Landroid/support/v4/e91;->if()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/e91;

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_1

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate output format in the collection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clashing output format names between "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The output format name can\'t contain \"}\" character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The output format name can\'t contain \"{\" character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The output format name can\'t contain \"+\" character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The output format name must start with letter or digit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The output format name can\'t be 0 long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/do;->b1:Ljava/util/Map;

    .line 24
    invoke-virtual {p0}, Lfreemarker/template/do;->S0()V

    return-void
.end method

.method public W1()Lfreemarker/cache/TemplateLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    return-object v0
.end method

.method public W2(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "freemarker.cache.WebappTemplateLoader"

    .line 1
    invoke-static {v0}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "javax.servlet.ServletContext"

    .line 2
    invoke-static {v1}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    new-array p2, v3, [Ljava/lang/Class;

    aput-object v1, p2, v2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v2

    .line 3
    const-class v1, Ljava/lang/String;

    aput-object v1, v5, v3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    move-object p2, v5

    .line 4
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/cache/TemplateLoader;

    .line 6
    invoke-virtual {p0, p1}, Lfreemarker/template/do;->g3(Lfreemarker/cache/TemplateLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Landroid/support/v4/mc;

    invoke-direct {p2, p1}, Landroid/support/v4/mc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public X1()Lfreemarker/cache/switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v0

    return-object v0
.end method

.method public X2(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lfreemarker/template/do;->x1:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public Y1()Lfreemarker/cache/throws;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v0

    return-object v0
.end method

.method public Y2(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfreemarker/template/do;->X2(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    return-void
.end method

.method public Z1()J
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->this()J

    move-result-wide v0

    return-wide v0
.end method

.method public Z2(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lfreemarker/template/do;->x1:Ljava/util/HashMap;

    .line 2
    iget-object p1, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 3
    invoke-direct {p0}, Lfreemarker/template/do;->a3()V

    return-void
.end method

.method public b1()Lfreemarker/cache/CacheStorage;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lfreemarker/cache/import;->goto()Lfreemarker/cache/CacheStorage;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b3(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/template/do;->Z2(Ljava/util/Map;)V

    return-void
.end method

.method public c(Z)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/d5;

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->c(Z)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Landroid/support/v4/tl2;

    if-eqz p1, :cond_0

    sget-object p1, Lfreemarker/template/do;->T2:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/template/do;->S2:[Ljava/lang/String;

    :goto_0
    invoke-direct {v2, p1}, Landroid/support/v4/tl2;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lfreemarker/core/d5;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public c2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->q1:Z

    return v0
.end method

.method public c3(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/do;->U0:Z

    return-void
.end method

.method public case(Lfreemarker/core/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/d0;->V1()Lfreemarker/template/static;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lfreemarker/template/do;->Y0(Lfreemarker/core/d0;Lfreemarker/template/static;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lfreemarker/template/do;->Z0(Lfreemarker/core/d0;Lfreemarker/template/static;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .line 1
    :try_start_0
    invoke-super {p0}, Lfreemarker/core/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/do;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lfreemarker/template/do;->w1:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    iget-object v1, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 5
    invoke-virtual {v1}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v1, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v1}, Lfreemarker/cache/import;->goto()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v1, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 6
    invoke-virtual {v1}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v4

    iget-object v1, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v1}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v5

    iget-object v1, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 7
    invoke-virtual {v1}, Lfreemarker/cache/import;->super()Lfreemarker/cache/native;

    move-result-object v6

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/do;->u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Landroid/support/v4/mc;

    const-string v2, "Cloning failed"

    invoke-direct {v1, v2, v0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->n1:Z

    return v0
.end method

.method public d3(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lfreemarker/template/do;->g1:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"tabSize\" can\'t be more than 256, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"tabSize\" must be at least 1, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e0(Lfreemarker/template/AttemptExceptionReporter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->e0(Lfreemarker/template/AttemptExceptionReporter;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/do;->q1:Z

    return-void
.end method

.method public e2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->u1:Z

    return v0
.end method

.method public e3(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->switch(I)V

    .line 2
    iput p1, p0, Lfreemarker/template/do;->d1:I

    return-void
.end method

.method public f3(Lfreemarker/cache/native;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->super()Lfreemarker/cache/native;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lfreemarker/cache/native;->for(Lfreemarker/template/do;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->goto()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 4
    invoke-virtual {v0}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v5

    move-object v1, p0

    move-object v6, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/do;->u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V

    :cond_1
    return-void
.end method

.method public g2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->t1:Z

    return v0
.end method

.method public g3(Lfreemarker/cache/TemplateLoader;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->goto()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 4
    invoke-virtual {v0}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v5

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 5
    invoke-virtual {v0}, Lfreemarker/cache/import;->super()Lfreemarker/cache/native;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/do;->u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lfreemarker/template/do;->k1:Z

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAutoEscapingPolicy()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/do;->X0:I

    return v0
.end method

.method public getIncompatibleImprovements()Landroid/support/v4/we2;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->c1:Landroid/support/v4/we2;

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/do;->e1:I

    return v0
.end method

.method public getNamingConvention()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/do;->f1:I

    return v0
.end method

.method public getOutputFormat()Landroid/support/v4/e91;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->Y0:Landroid/support/v4/e91;

    return-object v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->a1:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/template/do;->c1:Landroid/support/v4/we2;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->else:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getStrictSyntaxMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->U0:Z

    return v0
.end method

.method public getTabSize()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/do;->g1:I

    return v0
.end method

.method public getTagSyntax()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/do;->d1:I

    return v0
.end method

.method public getWhitespaceStripping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->W0:Z

    return v0
.end method

.method public h1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->y1:Ljava/lang/String;

    return-object v0
.end method

.method public h2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->r1:Z

    return v0
.end method

.method public h3(Lfreemarker/cache/switch;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->goto()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 3
    invoke-virtual {v0}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v5

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 4
    invoke-virtual {v0}, Lfreemarker/cache/import;->super()Lfreemarker/cache/native;

    move-result-object v6

    move-object v1, p0

    move-object v4, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/do;->u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lfreemarker/template/do;->l1:Z

    return-void
.end method

.method public i2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->o1:Z

    return v0
.end method

.method public i3(Lfreemarker/cache/throws;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->native()Lfreemarker/cache/throws;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->while()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0}, Lfreemarker/cache/import;->goto()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 3
    invoke-virtual {v0}, Lfreemarker/cache/import;->import()Lfreemarker/cache/switch;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    .line 4
    invoke-virtual {v0}, Lfreemarker/cache/import;->super()Lfreemarker/cache/native;

    move-result-object v6

    move-object v1, p0

    move-object v5, p1

    .line 5
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/do;->u2(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;)V

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lfreemarker/template/do;->m1:Z

    return-void
.end method

.method public j2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->Z0:Z

    return v0
.end method

.method public j3(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lfreemarker/cache/import;->package(J)V

    return-void
.end method

.method public k2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->a1:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k3(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/import;->package(J)V

    return-void
.end method

.method public l2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->p1:Z

    return v0
.end method

.method public l3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/do;->W0:Z

    return-void
.end method

.method public m2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->k1:Z

    return v0
.end method

.method public m3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->q1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->c1()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->e0(Lfreemarker/template/AttemptExceptionReporter;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->q1:Z

    :cond_0
    return-void
.end method

.method public n2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->l1:Z

    return v0
.end method

.method public n3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->n1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->e1()Lfreemarker/cache/CacheStorage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->F2(Lfreemarker/cache/CacheStorage;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->n1:Z

    :cond_0
    return-void
.end method

.method public o2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->m1:Z

    return v0
.end method

.method public o3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->u1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lfreemarker/template/do;->g1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->J2(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->u1:Z

    :cond_0
    return-void
.end method

.method public p2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->v1:Z

    return v0
.end method

.method public p3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->t1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lfreemarker/template/do;->i1()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->t0(Ljava/util/Locale;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->t1:Z

    :cond_0
    return-void
.end method

.method public q2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->s1:Z

    return v0
.end method

.method public q3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->r1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->j1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->u0(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->r1:Z

    :cond_0
    return-void
.end method

.method public r2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 2
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ar"

    const-string v2, "ISO-8859-6"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "be"

    const-string v2, "ISO-8859-5"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "bg"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ca"

    const-string v3, "ISO-8859-1"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "cs"

    const-string v4, "ISO-8859-2"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "da"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "de"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "el"

    const-string v5, "ISO-8859-7"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "en"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "es"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "et"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "fi"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "fr"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "hr"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "hu"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "is"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "it"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "iw"

    const-string v5, "ISO-8859-8"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ja"

    const-string v5, "Shift_JIS"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ko"

    const-string v5, "EUC-KR"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "lt"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "lv"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "mk"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "nl"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "no"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "pl"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "pt"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ro"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sh"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sk"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sl"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sq"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sr"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sv"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "tr"

    const-string v3, "ISO-8859-9"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "uk"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "zh"

    const-string v2, "GB2312"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "zh_TW"

    const-string v2, "Big5"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public r3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->o1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->l1()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->x0(Lfreemarker/template/ObjectWrapper;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->o1:Z

    :cond_0
    return-void
.end method

.method public s3()V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/mb2;->do:Landroid/support/v4/mb2;

    iput-object v0, p0, Lfreemarker/template/do;->Y0:Landroid/support/v4/e91;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfreemarker/template/do;->Z0:Z

    return-void
.end method

.method public t0(Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->t0(Ljava/util/Locale;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/do;->t1:Z

    return-void
.end method

.method public t3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->a1:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lfreemarker/template/do;->a1:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public throw(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "encoding"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "default_charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "defaultCharset"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "defaultEncoding"

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lfreemarker/core/t;->throw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "default_encoding"

    return-object p1
.end method

.method public u0(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->u0(Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/template/do;->r1:Z

    return-void
.end method

.method public u3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->p1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->n1()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->p1:Z

    :cond_0
    return-void
.end method

.method public v3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->k1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->p1()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->g3(Lfreemarker/cache/TemplateLoader;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->k1:Z

    :cond_0
    return-void
.end method

.method public w2(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v2}, Lfreemarker/template/do;->x1(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/do;->z2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public w3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->l1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->q1()Lfreemarker/cache/switch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->h3(Lfreemarker/cache/switch;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->l1:Z

    :cond_0
    return-void
.end method

.method public x0(Lfreemarker/template/ObjectWrapper;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->x0(Lfreemarker/template/ObjectWrapper;)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lfreemarker/template/do;->o1:Z

    if-eq p1, v0, :cond_0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lfreemarker/template/do;->a3()V
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to re-wrap earliearly set shared variables with the newly set object wrapper"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public x1(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lfreemarker/template/do;->y1:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "locale"

    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object v0, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lfreemarker/template/do;->z1:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lfreemarker/template/do;->y1:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public x2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/do;->z2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public x3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->m1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->s1()Lfreemarker/cache/throws;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->i3(Lfreemarker/cache/throws;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->m1:Z

    :cond_0
    return-void
.end method

.method public y1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->h1:Z

    return v0
.end method

.method public y2(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lfreemarker/template/do;->x1(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/do;->z2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public y3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->v1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lfreemarker/template/do;->u1()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->I0(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->v1:Z

    :cond_0
    return-void
.end method

.method public z1()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->c1:Landroid/support/v4/we2;

    invoke-virtual {v0}, Landroid/support/v4/we2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z2(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/do;->j1:Lfreemarker/cache/import;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/import;->default(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public z3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/do;->s1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/template/do;->v1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/do;->L0(Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/template/do;->s1:Z

    :cond_0
    return-void
.end method
